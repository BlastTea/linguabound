part of '../blocs.dart';

class HistoryExerciseBloc extends Bloc<HistoryExerciseEvent, HistoryExerciseState> {
  HistoryExerciseBloc() : super(HistoryExerciseInitial()) {
    on<SetHistoryExerciseState>((event, emit) => emit(event.state ?? _historyExerciseDataLoaded));

    on<SetHistoryExerciseToInitial>((event, emit) {
      _historyExercises.clear();

      _star = null;
      _exp = null;

      emit(HistoryExerciseInitial());
    });

    on<InitializeHistoryExerciseData>((event, emit) async {
      if (event.completer == null) emit(HistoryExerciseInitial());

      try {
        dynamic response = await ApiHelper.get(pathUrl: dotenv.env['ENDPOINT_EXERCISE_REPORT']!);

        _historyExercises = (response['data']['history'] as List).map((e) => HistoryExercise.fromJson(e)).toList();

        _star = response['data']?['star'];
        _exp = response['data']?['exp'];
      } catch (e) {
        if (e is Map && e['data']['message'] == 'Remaja not found') {
          _historyExercises = [];
          _star = null;
          _exp = null;
          event.completer?.complete(true);
          emit(_historyExerciseDataLoaded);
          return;
        }

        event.completer?.complete(false);
        ApiHelper.handleError(e);
        emit(HistoryExerciseError());
        return;
      }

      event.completer?.complete(true);
      emit(_historyExerciseDataLoaded);
    });
  }

  List<HistoryExercise> _historyExercises = [];

  int? _star;
  int? _exp;

  HistoryExerciseDataLoaded get _historyExerciseDataLoaded => HistoryExerciseDataLoaded(
        historyExercises: _historyExercises,
        star: _star,
        exp: _exp,
      );
}
