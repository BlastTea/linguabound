part of 'fragments.dart';

class ExerciseFragment extends StatefulWidget {
  const ExerciseFragment({super.key});

  @override
  State<ExerciseFragment> createState() => _ExerciseFragmentState();
}

class _ExerciseFragmentState extends State<ExerciseFragment> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        _animationController.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<ExerciseBloc, ExerciseState>(
        builder: (context, stateExercise) {
          if (stateExercise is ExerciseDataLoaded) {
            return Scaffold(
              backgroundColor: const Color(0xFFA590A7),
              body: Column(
                children: [
                  Container(
                    height: MediaQuery.viewPaddingOf(context).top,
                    color: kColorSurface,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        CustomScrollView(
                          controller: stateExercise.scrollController,
                          slivers: [
                            SliverStickyHeader(
                              overlapsContent: false,
                              header: buildContainerHeader(
                                context: context,
                                title: 'Bagian 1',
                                mention: 'Pemula',
                                description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 5 soal acak',
                              ),
                              sliver: buildPartBody(
                                context: context,
                                stateExercise: stateExercise,
                                startIndex: 0,
                              ),
                            ),
                            SliverStickyHeader(
                              header: buildContainerHeader(
                                context: context,
                                title: 'Bagian 2',
                                mention: 'Pejuang',
                                description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 10 soal acak',
                              ),
                              sliver: buildPartBody(
                                context: context,
                                stateExercise: stateExercise,
                                startIndex: 4,
                                alignment: PartBodyAlignment.right,
                              ),
                            ),
                            SliverStickyHeader(
                              header: buildContainerHeader(
                                context: context,
                                title: 'Bagian 3',
                                mention: 'Petualang',
                                description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 15 soal acak',
                              ),
                              sliver: buildPartBody(
                                context: context,
                                stateExercise: stateExercise,
                                startIndex: 8,
                              ),
                            ),
                            SliverStickyHeader(
                              header: buildContainerHeader(
                                context: context,
                                title: 'Bagian 4',
                                mention: 'Legenda',
                                description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 20 soal acak',
                              ),
                              sliver: buildPartBody(
                                context: context,
                                stateExercise: stateExercise,
                                startIndex: 12,
                                alignment: PartBodyAlignment.right,
                              ),
                            ),
                          ],
                        ),
                        if (mounted)
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (context, child) {
                              try {
                                Offset? activeButtonOffset = (stateExercise.buttonKeys[stateExercise.currentActiveIndex].currentContext?.findRenderObject() as RenderBox?)?.localToGlobal(Offset.zero);

                                return Positioned(
                                  top: (activeButtonOffset?.dy ?? 0.0) - 70.0 + (5.0 * CurvedAnimation(parent: _animationController, curve: Curves.easeInOut).value),
                                  left: (activeButtonOffset?.dx ?? 0.0) - 10.0,
                                  child: (activeButtonOffset?.dy ?? 0.0) < 180.0
                                      ? Container()
                                      : Stack(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svgs/bubble message start.svg',
                                            ),
                                            Positioned(
                                              top: 12.0,
                                              left: stateExercise.currentActiveIndex > 0 ? 14.0 : 16.0,
                                              child: Text(
                                                stateExercise.currentActiveIndex > 0 ? 'Lanjut' : 'Mulai',
                                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: kColorBorder),
                                              ),
                                            ),
                                          ],
                                        ),
                                );
                              } catch (e) {
                                return Container();
                              }
                            },
                          ),
                      ],
                    ),
                  ),
                ],
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

  Widget buildContainerHeader({
    required BuildContext context,
    required String title,
    required String mention,
    required String description,
    double? topHeigth,
  }) =>
      Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: kColorSurface,
          border: Border(
            bottom: BorderSide(
              width: 5.0,
              color: kColorBorder,
            ),
          ),
        ),
        child: Column(
          children: [
            DefaultTextStyle(
              style: Theme.of(context).textTheme.titleLarge!,
              child: Row(
                children: [
                  Text('$title・'),
                  Text(mention),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Text(description),
          ],
        ),
      );

  Widget buildPartBody({
    required BuildContext context,
    required ExerciseDataLoaded stateExercise,
    required int startIndex,
    PartBodyAlignment alignment = PartBodyAlignment.left,
  }) {
    bool isLeft = alignment == PartBodyAlignment.left;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 600.0,
        child: Stack(
          children: [
            Positioned(
              left: isLeft ? -10.0 : null,
              right: !isLeft ? -10.0 : null,
              child: SvgPicture.asset(
                'assets/svgs/bird facing ${isLeft ? 'left' : 'right'}.svg',
                width: 205.0,
                height: 205.0,
              ),
            ),
            Positioned(
              right: isLeft ? -10.0 : null,
              left: !isLeft ? -10.0 : null,
              top: 300.0 - 102.5,
              child: SvgPicture.asset(
                'assets/svgs/bird facing ${isLeft ? 'right' : 'left'}.svg',
                width: 205.0,
                height: 205.0,
              ),
            ),
            Positioned(
              left: isLeft ? -10.0 : null,
              right: !isLeft ? -10.0 : null,
              bottom: 0.0,
              child: SvgPicture.asset(
                'assets/svgs/bird facing ${isLeft ? 'left' : 'right'}.svg',
                width: 205.0,
                height: 205.0,
              ),
            ),
            Positioned(
              top: 80.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              child: CircleExerciseButton(
                key: stateExercise.buttonKeys[startIndex],
                svgAsset: 'star',
                onPressed: stateExercise.currentActiveIndex >= startIndex ? () => MyApp.exerciseBloc.add(ExerciseStartPressed(value: stateExercise.exercises[startIndex])) : () {},
                enabled: stateExercise.currentActiveIndex >= startIndex,
                ignorePointer: startIndex < stateExercise.currentActiveIndex,
              ),
            ),
            Positioned(
              top: 200.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: CircleExerciseButton(
                key: stateExercise.buttonKeys[startIndex + 1],
                svgAsset: 'padlock',
                onPressed: stateExercise.currentActiveIndex >= startIndex + 1 ? () => MyApp.exerciseBloc.add(ExerciseStartPressed(value: stateExercise.exercises[startIndex + 1])) : () {},
                enabled: stateExercise.currentActiveIndex >= startIndex + 1,
                ignorePointer: startIndex + 1 < stateExercise.currentActiveIndex,
              ),
            ),
            Positioned(
              top: 320.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: CircleExerciseButton(
                key: stateExercise.buttonKeys[startIndex + 2],
                svgAsset: 'book',
                onPressed: stateExercise.currentActiveIndex >= startIndex + 2 ? () => MyApp.exerciseBloc.add(ExerciseStartPressed(value: stateExercise.exercises[startIndex + 2])) : () {},
                enabled: stateExercise.currentActiveIndex >= startIndex + 2,
                ignorePointer: startIndex + 2 < stateExercise.currentActiveIndex,
              ),
            ),
            Positioned(
              top: 440.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              child: CircleExerciseButton(
                key: stateExercise.buttonKeys[startIndex + 3],
                svgAsset: 'trophy',
                onPressed: stateExercise.currentActiveIndex >= startIndex + 3 ? () => MyApp.exerciseBloc.add(ExerciseStartPressed(value: stateExercise.exercises[startIndex + 3])) : () {},
                enabled: stateExercise.currentActiveIndex >= startIndex + 3,
                ignorePointer: startIndex + 3 < stateExercise.currentActiveIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum PartBodyAlignment {
  left,
  right,
}
