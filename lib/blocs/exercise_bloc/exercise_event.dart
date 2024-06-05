part of '../blocs.dart';

@immutable
abstract class ExerciseEvent {}

class SetExerciseState extends ExerciseEvent {
  SetExerciseState([this.state]);

  final ExerciseState? state;
}

class SetExerciseToInitial extends ExerciseEvent {}

class SetAssessmentToInitial extends ExerciseEvent {
  SetAssessmentToInitial({
    this.completer,
    this.withMessage = true,
  });

  final Completer<bool>? completer;
  final bool withMessage;
}

class InitializeExerciseData extends ExerciseEvent {
  InitializeExerciseData({
    this.completer,
    this.withLoadingDialog = false,
  });

  final Completer<bool>? completer;
  final bool withLoadingDialog;
}

class ExerciseStartPressed extends ExerciseEvent {
  ExerciseStartPressed({required this.value});

  final Exercise value;
}

class SetSelectedAssessmentAnswer extends ExerciseEvent {
  SetSelectedAssessmentAnswer({required this.value});

  final int value;
}

class CheckAssessmentAnswer extends ExerciseEvent {}
