part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 48.0),
                Text(
                  'Buat akun',
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Nama',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 24.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Konfirmasi Password',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0 + MediaQuery.viewInsetsOf(context).bottom),
          child: MyFilledButton(
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const SignUpSuccessfulPage())),
            child: const Text('Daftar'),
          ),
        ),
      );
}
