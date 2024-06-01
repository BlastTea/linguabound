part of 'fragments.dart';

class ExerciseFragment extends StatelessWidget {
  const ExerciseFragment({super.key});

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
              child: CustomScrollView(
                slivers: [
                  SliverStickyHeader(
                    overlapsContent: false,
                    header: buildContainerHeader(
                      context: context,
                      title: 'Bagian 1',
                      mention: 'Pemula',
                      description: 'Terdapat 4 sublevel dan tiap soal terdiri dari 5 soal acak',
                    ),
                    sliver: buildPartBody(context: context),
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
                    sliver: buildPartBody(context: context),
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
                      alignment: PartBodyAlignment.right,
                    ),
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

  Widget buildCircleButton({
    required BuildContext context,
    String? svgAsset,
    bool enabled = true,
  }) =>
      IgnorePointer(
        ignoring: !enabled,
        child: MyFilledButton.circle(
          backgroundColor: enabled ? kColorSurface : const Color(0xFFE5E5E5),
          borderColor: enabled ? null : const Color(0xFFAFAFAF),
          radius: 64.0,
          bottomBorderOnly: true,
          bottomBorderWidth: 8.0,
          pressedBottomBorderWidth: 0.0,
          onPressed: () {},
          child: svgAsset != null
              ? SvgPicture.asset(
                  'assets/svgs/$svgAsset ${enabled ? 'enabled' : 'disabled'}.svg',
                )
              : null,
        ),
      );

  Widget buildPartBody({
    required BuildContext context,
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
              child: buildCircleButton(
                context: context,
                svgAsset: 'star',
              ),
            ),
            Positioned(
              top: 200.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: buildCircleButton(
                context: context,
                svgAsset: 'padlock',
                enabled: false,
              ),
            ),
            Positioned(
              top: 320.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 64.0 : null,
              child: buildCircleButton(
                context: context,
                svgAsset: 'book',
                enabled: false,
              ),
            ),
            Positioned(
              top: 440.0,
              left: isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              right: !isLeft ? MediaQuery.sizeOf(context).width / 2 - 32.0 : null,
              child: buildCircleButton(
                context: context,
                svgAsset: 'trophy',
                enabled: false,
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
