part of '../blocs.dart';

@immutable
abstract class HistoryExerciseEvent {}

class SetHistoryExerciseState extends HistoryExerciseEvent {
  SetHistoryExerciseState([this.state]);

  final HistoryExerciseState? state;
}

class SetHistoryExerciseToInitial extends HistoryExerciseEvent {}

class InitializeHistoryExerciseData extends HistoryExerciseEvent {
  InitializeHistoryExerciseData({this.completer});

  final Completer<bool>? completer;
}
