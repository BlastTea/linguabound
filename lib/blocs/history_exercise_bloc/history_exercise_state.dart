part of '../blocs.dart';

@immutable
abstract class HistoryExerciseState {}

class HistoryExerciseInitial extends HistoryExerciseState {}

class HistoryExerciseError extends HistoryExerciseState {}

class HistoryExerciseDataLoaded extends HistoryExerciseState {
  HistoryExerciseDataLoaded({
    required this.historyExercises,
    required this.star,
    required this.exp,
  });

  final List<HistoryExercise> historyExercises;
  final int? star;
  final int? exp;
}
