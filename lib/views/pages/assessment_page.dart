part of 'pages.dart';

class AssessmentPage extends StatefulWidget {
  const AssessmentPage({super.key});

  @override
  State<AssessmentPage> createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) => BlocBuilder<ExerciseBloc, ExerciseState>(
        builder: (context, stateExercise) {
          if (stateExercise is ExerciseDataLoaded) {
            return WillPopScope(
              onWillPop: () {
                Completer<bool> completer = Completer();
                MyApp.exerciseBloc.add(SetAssessmentToInitial(completer: completer));
                return completer.future;
              },
              child: Scaffold(
                body: Column(
                  children: [
                    SizedBox(height: MediaQuery.viewPaddingOf(context).top),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => MyApp.exerciseBloc.add(SetAssessmentToInitial()),
                          icon: const Icon(Icons.close),
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 16.0,
                                decoration: BoxDecoration(
                                  color: kColorWhite,
                                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                  border: Border.all(color: kColorBorder),
                                ),
                              ),
                              AnimatedContainer(
                                duration: Durations.medium3,
                                curve: Curves.easeInOut,
                                width: (MediaQuery.sizeOf(context).width - 16.0 - 48.0) * (stateExercise.currentQuestionDataIndex / (stateExercise.questionData.length + stateExercise.wrongQuestionData.length)),
                                height: 16.0,
                                decoration: const BoxDecoration(
                                  color: kColorBorder,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 16.0),
                      ],
                    ),
                    Expanded(
                      child: PageView(
                        controller: stateExercise.pageControllerAssesment,
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          stateExercise.questionData.length + stateExercise.wrongQuestionData.length,
                          (index) {
                            DataSoal questionData = index < stateExercise.questionData.length ? stateExercise.questionData[index] : stateExercise.wrongQuestionData[index - stateExercise.questionData.length];

                            return Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    questionData.soal?.pertanyaan ?? '-',
                                    style: Theme.of(context).textTheme.headlineLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Column(
                                    children: List.generate(questionData.pilihan!.length, (index) {
                                      Pilihan pilihan = questionData.pilihan![index];

                                      return Column(
                                        children: [
                                          const SizedBox(height: 16.0),
                                          MyFilledButton.tonal(
                                            selected: index == stateExercise.selectedAnswerIndex,
                                            onPressed: () => MyApp.exerciseBloc.add(SetSelectedAssessmentAnswer(value: index)),
                                            child: Text(pilihan.pilihan ?? '-'),
                                          ),
                                        ],
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: MyFilledButton(
                    onPressed: stateExercise.selectedAnswerIndex == -1 ? null : () => MyApp.exerciseBloc.add(CheckAssessmentAnswer()),
                    child: const Text('Periksa'),
                  ),
                ),
              ),
            );
          } else if (stateExercise is ExerciseError) {
            return Scaffold(
              body: SafeArea(
                child: ErrorOccuredButton(
                  onRetryPressed: () => MyApp.exerciseBloc.add(InitializeExerciseData()),
                ),
              ),
            );
          }

          return const Scaffold(
            body: SafeArea(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      );
}
