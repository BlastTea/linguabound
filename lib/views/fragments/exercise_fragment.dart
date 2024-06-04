part of 'fragments.dart';

class ExerciseFragment extends StatefulWidget {
  const ExerciseFragment({super.key});

  @override
  State<ExerciseFragment> createState() => _ExerciseFragmentState();
}

class _ExerciseFragmentState extends State<ExerciseFragment> with SingleTickerProviderStateMixin {
  final List<GlobalKey> _buttonKeys = List.generate(16, (index) => GlobalKey());

  final List<bool> _actives = List.generate(16, [0, 1].contains);

  final ScrollController _scrollController = ScrollController();

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
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
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
                    controller: _scrollController,
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
                          startIndex: 0,
                          actives: _actives.skip(0).toList(),
                        ),
                      ),
                      SliverStickyHeader(
                        header: buildContainerHeader(
                          context: context,
                          title: 'Bagian 2',
                          mention: 'Petualang',
                          description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 10 soal acak',
                        ),
                        sliver: buildPartBody(
                          context: context,
                          startIndex: 4,
                          actives: _actives.skip(4).toList(),
                          alignment: PartBodyAlignment.right,
                        ),
                      ),
                      SliverStickyHeader(
                        header: buildContainerHeader(
                          context: context,
                          title: 'Bagian 3',
                          mention: 'Pejuang',
                          description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 15 soal acak',
                        ),
                        sliver: buildPartBody(
                          context: context,
                          startIndex: 8,
                          actives: _actives.skip(8).toList(),
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
                          startIndex: 12,
                          actives: _actives.skip(12).toList(),
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
                          int index = _actives.lastIndexWhere((element) => element);

                          Offset? activeButtonOffset = (_buttonKeys[index].currentContext?.findRenderObject() as RenderBox?)?.localToGlobal(Offset.zero);

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
                                        left: index > 0 ? 14.0 : 16.0,
                                        child: Text(
                                          index > 0 ? 'Lanjut' : 'Mulai',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
                  children: [
                    SvgPicture.asset('assets/svgs/exp.svg'),
                    const SizedBox(width: 8.0),
                    const Text('120 Exp'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(description),
          ],
        ),
      );

  Widget buildPartBody({
    required BuildContext context,
    required int startIndex,
    required List<bool> actives,
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
                key: _buttonKeys[startIndex],
                svgAsset: 'star',
                onPressed: actives[0] ? () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const AssesmentPage())) : () {},
                enabled: actives[0],
              ),
            ),
            Positioned(
              top: 200.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: CircleExerciseButton(
                key: _buttonKeys[startIndex + 1],
                svgAsset: 'padlock',
                onPressed: actives[1] ? () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const AssesmentPage())) : () {},
                enabled: actives[1],
              ),
            ),
            Positioned(
              top: 320.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: CircleExerciseButton(
                key: _buttonKeys[startIndex + 2],
                svgAsset: 'book',
                onPressed: actives[2] ? () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const AssesmentPage())) : () {},
                enabled: actives[2],
              ),
            ),
            Positioned(
              top: 440.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              child: CircleExerciseButton(
                key: _buttonKeys[startIndex + 3],
                svgAsset: 'trophy',
                onPressed: actives[3] ? () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const AssesmentPage())) : () {},
                enabled: actives[3],
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
