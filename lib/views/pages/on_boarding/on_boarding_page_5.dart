part of '../pages.dart';

class OnBoardingPage5 extends StatefulWidget {
  const OnBoardingPage5({super.key});

  @override
  State<OnBoardingPage5> createState() => _OnBoardingPage5State();
}

class _OnBoardingPage5State extends State<OnBoardingPage5> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32.0),
              Text(
                'Ini yang akan kamu capai dalam 3 bulan',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              ...List.generate(
                3,
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: IgnorePointer(
                        child: MyFilledButton.tonal(
                          selected: false,
                          onPressed: () {},
                          child: Text([
                            'Berbicara dengan percaya diri',
                            'Mengembangkan kosakata',
                            'Menciptakan rasa senang dalam belajar bahasa inggris',
                          ][index]),
                        ),
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
            // TODO: add excercise before go to end page
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const OnBoardingEnd())),
            child: const Text('Lanjutkan'),
          ),
        ),
      );
}
