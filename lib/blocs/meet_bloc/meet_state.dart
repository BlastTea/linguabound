part of '../blocs.dart';

@immutable
abstract class MeetState {}

class MeetInitial extends MeetState {}

class MeetError extends MeetState {}

class MeetDataLoaded extends MeetState {
  MeetDataLoaded({required this.meets});

  final List<Meet> meets;
}
