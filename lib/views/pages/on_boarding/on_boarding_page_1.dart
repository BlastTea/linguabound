part of '../pages.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: Add shadow to the text
              Text(
                'Linguabound',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 128.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Image.asset('assets/images/logo.png'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyFilledButton(
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const OnBoardingPage2())),
            child: const Text('Mulai'),
          ),
        ),
      );
}
