part of '../pages.dart';

// TODO: maybe use bloc instead of stateful widget?
class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({super.key});

  @override
  State<OnBoardingPage3> createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
  // TODO: maybe move this to bloc, it's just temporary anyway
  List<bool> _isSelecteds = [false, false, false];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32.0),
              Text(
                'Sudah sejauh mana nih level bahasa inggrismu?',
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
                      child: MyFilledButton.tonal(
                        selected: _isSelecteds[index],
                        onPressed: () => setState(() {
                          _isSelecteds = _isSelecteds.map((e) => false).toList();
                          _isSelecteds[index] = !_isSelecteds[index];
                        }),
                        child: Text([
                          'Aku masih pemula',
                          'Aku tau beberapa kosakata bahasa inggris',
                          'Aku bisa berbicara menggunakan bahasa inggris informal',
                        ][index]),
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
          child: MyFilledButton(
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const OnBoardingPage4())),
            child: const Text('Lanjutkan'),
          ),
        ),
      );
}
