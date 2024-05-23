part of 'pages.dart';

// TODO: maybe use bloc instead of stateful widget?
class OnBoardingPage4 extends StatefulWidget {
  const OnBoardingPage4({super.key});

  @override
  State<OnBoardingPage4> createState() => _OnBoardingPage4State();
}

class _OnBoardingPage4State extends State<OnBoardingPage4> {
  // TODO: maybe move this to bloc, it's just temporary anyway
  List<bool> _isSelecteds = [false, false, false, false];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32.0),
              Text(
                'Berapa lama waktu target belajarmu?',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              ...List.generate(
                _isSelecteds.length,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: LargeChoiceChip(
                        label: Text([
                          '3 mnt/hari',
                          '10 mnt/hari',
                          '15 mnt/hari',
                          '30 mnt/hari',
                        ][index]),
                        selected: _isSelecteds[index],
                        onSelected: (value) => setState(() {
                          _isSelecteds = _isSelecteds.map((e) => false).toList();
                          _isSelecteds[index] = value;
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FilledButton(
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const OnBoardingPage5())),
            child: const Text('AYO BERKOMITMEN!'),
          ),
        ),
      );
}
