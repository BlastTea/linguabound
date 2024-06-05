part of '../blocs.dart';

@immutable
abstract class MeetEvent {}

class SetMeetState extends MeetEvent {
  SetMeetState([this.state]);

  final MeetState? state;
}

class SetMeetToInitial extends MeetEvent {}

class InitializeMeetData extends MeetEvent {
  InitializeMeetData({this.completer});

  final Completer<bool>? completer;
}
