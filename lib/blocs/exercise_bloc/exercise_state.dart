part of '../blocs.dart';

@immutable
abstract class ExerciseState {}

class ExerciseInitial extends ExerciseState {}

class ExerciseError extends ExerciseState {}

class ExerciseDataLoaded extends ExerciseState {
  ExerciseDataLoaded({
    required this.buttonKeys,
    required this.pageControllerAssesment,
    required this.scrollController,
    required this.exercises,
    required this.questionData,
    required this.wrongQuestionData,
    required this.currentActiveIndex,
    required this.currentQuestionDataIndex,
    required this.selectedAnswerIndex,
  });

  final List<GlobalKey> buttonKeys;

  final PageController pageControllerAssesment;

  final ScrollController scrollController;

  final List<Exercise> exercises;

  final List<DataSoal> questionData;
  final List<DataSoal> wrongQuestionData;

  final int currentActiveIndex;
  final int currentQuestionDataIndex;
  final int selectedAnswerIndex;
}
