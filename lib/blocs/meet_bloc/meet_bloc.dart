part of '../blocs.dart';

class MeetBloc extends Bloc<MeetEvent, MeetState> {
  MeetBloc() : super(MeetInitial()) {
    on<SetMeetState>((event, emit) => emit(event.state ?? _meetDataLoaded));

    on<SetMeetToInitial>((event, emit) {
      _meets.clear();

      emit(MeetInitial());
    });

    on<InitializeMeetData>((event, emit) async {
      if (event.completer == null) emit(MeetInitial());

      try {
        _meets = await ApiHelper.get(pathUrl: dotenv.env['ENDPOINT_MEET']!).then((value) => (value['data'] as List).map((e) => Meet.fromJson(e)).toList());
      } catch (e) {
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        return;
      }

      event.completer?.complete(true);
      emit(_meetDataLoaded);
    });
  }

  List<Meet> _meets = [];

  MeetDataLoaded get _meetDataLoaded => MeetDataLoaded(
        meets: _meets,
      );
}
