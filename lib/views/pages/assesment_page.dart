part of 'pages.dart';

class AssesmentPage extends StatefulWidget {
  const AssesmentPage({super.key});

  @override
  State<AssesmentPage> createState() => _AssesmentPageState();
}

class _AssesmentPageState extends State<AssesmentPage> {
  final List<bool> _isSelecteds = [false, false, false, false];

  void _handleShowWrongAnswer() {
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
                  '“Walking along the beach, the waves crashed against the shore.”',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyFilledButton(
                  onPressed: () => NavigationHelper.back(),
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
                  onPressed: () => NavigationHelper.back(),
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

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            SizedBox(height: MediaQuery.viewPaddingOf(context).top),
            Row(
              children: [
                IconButton(
                  onPressed: () => NavigationHelper.back(),
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
                        // TODO: Change 0.5 to actual percentage
                        width: (MediaQuery.sizeOf(context).width - 16.0 - 48.0) * 0.5,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Which of the following sentences contains a correctly used participial phrase?',
                      style: Theme.of(context).textTheme.headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 16.0),
                        MyFilledButton.tonal(
                          selected: _isSelecteds[0],
                          onPressed: () => setState(() {
                            for (int i = 0; i < _isSelecteds.length; i++) {
                              if (i == 0) {
                                _isSelecteds[i] = true;
                                continue;
                              }

                              _isSelecteds[i] = false;
                            }
                          }),
                          child: const Text('The book sitting on the table is mine.'),
                        ),
                        const SizedBox(height: 16.0),
                        MyFilledButton.tonal(
                          selected: _isSelecteds[1],
                          onPressed: () => setState(() {
                            for (int i = 0; i < _isSelecteds.length; i++) {
                              if (i == 1) {
                                _isSelecteds[i] = true;
                                continue;
                              }

                              _isSelecteds[i] = false;
                            }
                          }),
                          child: const Text('Walking along the beach, the waves crashed against the shore.'),
                        ),
                        const SizedBox(height: 16.0),
                        MyFilledButton.tonal(
                          selected: _isSelecteds[2],
                          onPressed: () => setState(() {
                            for (int i = 0; i < _isSelecteds.length; i++) {
                              if (i == 2) {
                                _isSelecteds[i] = true;
                                continue;
                              }

                              _isSelecteds[i] = false;
                            }
                          }),
                          child: const Text('She looked at the painting hanging on the wall.'),
                        ),
                        const SizedBox(height: 16.0),
                        MyFilledButton.tonal(
                          selected: _isSelecteds[3],
                          onPressed: () => setState(() {
                            for (int i = 0; i < _isSelecteds.length; i++) {
                              if (i == 3) {
                                _isSelecteds[i] = true;
                                continue;
                              }

                              _isSelecteds[i] = false;
                            }
                          }),
                          child: const Text('Eating quickly, the food tasted delicious.'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyFilledButton(
            onPressed: () => _isSelecteds[1] ? _handleShowRightAnswer() : _handleShowWrongAnswer(),
            child: const Text('Periksa'),
          ),
        ),
      );
}
