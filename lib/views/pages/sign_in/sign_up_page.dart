part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
    required this.selectedRole,
  });

  final UserRole selectedRole;

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, stateAuthentication) {
          stateAuthentication as AuthenticationDataLoaded;

          return Scaffold(
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
                        controller: stateAuthentication.textControllerUsernameSignUp,
                        decoration: InputDecoration(
                          labelText: selectedRole == UserRole.remaja ? 'Username' : 'Nama Lengkap',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: stateAuthentication.textControllerNameSignup,
                        decoration: const InputDecoration(
                          labelText: 'Nama',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: stateAuthentication.textControllerEmailSignUp,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: stateAuthentication.textControllerPasswordSignUp,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () => MyApp.authenticationBloc.add(SetSignUpPasswordVisible(value: !stateAuthentication.isSignUpPasswordVisible)),
                            icon: Icon(!stateAuthentication.isSignUpPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        obscureText: !stateAuthentication.isSignUpPasswordVisible,
                        textInputAction: TextInputAction.next,
                        onEditingComplete: stateAuthentication.focusNodePasswordConfirmation.requestFocus,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        focusNode: stateAuthentication.focusNodePasswordConfirmation,
                        controller: stateAuthentication.textControllerPasswordConfirmationSignUp,
                        decoration: InputDecoration(
                          labelText: 'Konfirmasi Password',
                          suffixIcon: IconButton(
                            onPressed: () => MyApp.authenticationBloc.add(SetSignUpPasswordConfirmationVisible(value: !stateAuthentication.isSignUpPasswordConfirmationVisible)),
                            icon: Icon(!stateAuthentication.isSignUpPasswordConfirmationVisible ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        obscureText: !stateAuthentication.isSignUpPasswordConfirmationVisible,
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
                onPressed: () => MyApp.authenticationBloc.add(SignUpPressed(role: selectedRole)),
                child: const Text('Daftar'),
              ),
            ),
          );
        },
      );
}
