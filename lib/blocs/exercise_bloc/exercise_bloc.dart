part of '../blocs.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseBloc() : super(ExerciseInitial()) {
    on<SetExerciseState>((event, emit) => emit(event.state ?? _exerciseDataLoaded));

    on<SetExerciseToInitial>((event, emit) {
      _scrollController = ScrollController();

      _exercises.clear();

      _questionData.clear();
      _wrongQuestionData.clear();

      _selectedAnswers.clear();

      _currentActiveIndex = 0;
      _currentQuestionDataIndex = 0;
      _selectedAnswerIndex = -1;
      emit(ExerciseInitial());
    });

    on<SetAssessmentToInitial>((event, emit) async {
      if (event.withMessage) {
        bool? goBack = await showYesOrNoDialog(
          titleText: 'Yakin ingin kembali?',
          primaryFilledButton: true,
        );

        if (!(goBack ?? false)) {
          event.completer?.complete(false);
          return;
        }
      }

      _questionData.clear();
      _wrongQuestionData.clear();

      _selectedAnswers.clear();

      _currentQuestionDataIndex = 0;
      _selectedAnswerIndex = -1;

      if (event.completer == null) {
        NavigationHelper.back();
      } else {
        event.completer!.complete(true);
      }
      await Future.delayed(Durations.medium3);

      emit(_exerciseDataLoaded);
    });

    on<InitializeExerciseData>((event, emit) async {
      if (event.completer == null) emit(ExerciseInitial());

      if (event.withLoadingDialog) showLoadingDialog();

      try {
        _exercises = await ApiHelper.get(pathUrl: dotenv.env['ENDPOINT_EXERCISE_STATE']!).then((value) => (value['data'] as List).map((e) => Exercise.fromJson(e)).toList());

        _currentActiveIndex = _exercises.lastIndexWhere((element) => element.completed ?? false) + 1;

        // TODO: Implement current offset for active level
        // _scrollController.jumpTo(678.0);
      } catch (e) {
        if (event.withLoadingDialog) NavigationHelper.back();
        event.completer?.complete(false);
        ApiHelper.handleError(e);
        return;
      }

      if (event.withLoadingDialog) NavigationHelper.back();
      event.completer?.complete(true);
      emit(_exerciseDataLoaded);
    });

    on<ExerciseStartPressed>((event, emit) async {
      showLoadingDialog();

      try {
        _questionData = await ApiHelper.get(pathUrl: '${dotenv.env['ENDPOINT_EXERCISE_START']!}/${event.value.bagianId}/${event.value.subBagianId}').then((value) => (value['data']['data_soal'] as List).map((e) => DataSoal.fromJson(e)).toList());
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      emit(_exerciseDataLoaded);
      NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const AssessmentPage()));
    });

    on<SetSelectedAssessmentAnswer>((event, emit) {
      _selectedAnswerIndex = event.value;
      emit(_exerciseDataLoaded);
    });

    on<CheckAssessmentAnswer>((event, emit) {
      DataSoal currentQuestionData = _currentQuestionData;

      int correctAnswerIndex = currentQuestionData.pilihan!.indexWhere((element) => element.benar ?? false);

      if (_currentQuestionDataIndex < _questionData.length) {
        _selectedAnswers.addAll({_currentQuestionData.soal!.id!: _currentQuestionData.pilihan![_selectedAnswerIndex].id!});
      }

      if (_selectedAnswerIndex == correctAnswerIndex) {
        _handleShowRightAnswer();
      } else {
        _handleShowWrongAnswer(rightAnswer: currentQuestionData.pilihan![correctAnswerIndex].pilihan ?? '-');
      }
    });
  }

  final List<GlobalKey> _buttonKeys = List.generate(16, (index) => GlobalKey());

  final PageController _pageControllerAssesment = PageController();

  ScrollController _scrollController = ScrollController();

  List<Exercise> _exercises = [];

  List<DataSoal> _questionData = [];
  final List<DataSoal> _wrongQuestionData = [];

  final Map<int, int> _selectedAnswers = {};

  int _currentActiveIndex = 0;
  int _currentQuestionDataIndex = 0;
  int _selectedAnswerIndex = -1;

  ExerciseDataLoaded get _exerciseDataLoaded => ExerciseDataLoaded(
        buttonKeys: _buttonKeys,
        pageControllerAssesment: _pageControllerAssesment,
        scrollController: _scrollController,
        exercises: _exercises,
        questionData: _questionData,
        wrongQuestionData: _wrongQuestionData,
        currentActiveIndex: _currentActiveIndex,
        currentQuestionDataIndex: _currentQuestionDataIndex,
        selectedAnswerIndex: _selectedAnswerIndex,
      );

  DataSoal get _currentQuestionData => _currentQuestionDataIndex < _questionData.length ? _questionData[_currentQuestionDataIndex] : _wrongQuestionData[_currentQuestionDataIndex - _questionData.length];

  void _handleShowWrongAnswer({required String rightAnswer}) {
    NavigationHelper.showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Salah',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.red),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Jawaban benar:', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red)),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '“$rightAnswer”',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyFilledButton(
                  onPressed: () {
                    NavigationHelper.back();
                    _wrongQuestionData.add(_currentQuestionData);
                    _goToNextAssesmentPage();
                    add(SetExerciseState());
                  },
                  backgroundColor: Colors.red.withOpacity(0.7),
                  borderColor: Colors.red,
                  child: const Text('Oke'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleShowRightAnswer() {
    NavigationHelper.showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      builder: (context) => PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  ['Benar', 'Keren'][Random().nextInt(2)],
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.green),
                ),
              ),
              const SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyFilledButton(
                  onPressed: () {
                    NavigationHelper.back();
                    _goToNextAssesmentPage();
                    add(SetExerciseState());
                  },
                  backgroundColor: Colors.green.withOpacity(0.7),
                  borderColor: Colors.green,
                  child: const Text('Lanjutkan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _goToNextAssesmentPage() async {
    if (_currentQuestionDataIndex ==
        (_questionData.length -
            1 +
            (_wrongQuestionData.isNotEmpty
                ? 1
                : _wrongQuestionData.length > 1
                    ? _wrongQuestionData.length - 1
                    : 0))) {
      await showInformationDialog(
        titleText: 'Selamat!',
        'Kamu telah menyelesaikan halaman penilaian',
        primaryFilledButton: true,
      );

      showLoadingDialog();

      try {
        Exercise currentExercise = _exercises[_currentActiveIndex];

        await ApiHelper.post(
          pathUrl: '${dotenv.env['ENDPOINT_EXERCISE_SUBMIT']!}/${currentExercise.bagianId}/${currentExercise.subBagianId}',
          body: {
            'soal_id': _selectedAnswers.keys.toList(),
            'jawaban': _selectedAnswers.values.toList(),
          },
        );
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();

      Completer<bool> completer = Completer();
      add(InitializeExerciseData(completer: completer, withLoadingDialog: true));
      bool isSent = await completer.future;

      if (!isSent) return;

      NavigationHelper.back();

      await Future.delayed(Durations.medium3);

      _questionData.clear();
      _wrongQuestionData.clear();

      _selectedAnswers.clear();

      _currentQuestionDataIndex = 0;
      _selectedAnswerIndex = -1;
      add(SetExerciseState());
      return;
    }

    if (_pageControllerAssesment.hasClients) {
      _currentQuestionDataIndex++;
      _selectedAnswerIndex = -1;
      _pageControllerAssesment.nextPage(duration: Durations.medium2, curve: Curves.easeInOut);
    }
  }
}
