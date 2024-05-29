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
              Text(
                'Linguabound',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  shadows: [
                    Shadow(
                      blurRadius: 4.0,
                      offset: const Offset(0.0, 4.0),
                      color: const Color(0xFF000000).withOpacity(0.25),
                    ),
                    Shadow(
                      blurRadius: 4.0,
                      offset: const Offset(0.0, 4.0),
                      color: const Color(0xFF000000).withOpacity(0.25),
                    ),
                  ],
                ),
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
