part of '../pages.dart';

class SignUpSuccessfulPage extends StatelessWidget {
  const SignUpSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/svgs/green checkmark.svg'),
              const SizedBox(height: 48.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Berhasil membuat akun',
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 48.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyFilledButton(
                  onPressed: () {
                    NavigationHelper.back();
                    NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const SignInPage()));
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      );
}
