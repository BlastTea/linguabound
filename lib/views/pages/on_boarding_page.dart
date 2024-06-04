part of 'pages.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/logo half.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Belajar\nbahasa inggris itu\nmenyenangkan 👋',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              MyFilledButton(
                onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => SignUpSelectRolePage(key: homePageKey))),
                child: const Text('Mulai'),
              ),
              const SizedBox(height: 8.0),
              MyFilledButton.tonal(
                onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const SignInPage())),
                child: const Text('Sudah Punya Akun'),
              ),
            ],
          ),
        ),
      );
}
