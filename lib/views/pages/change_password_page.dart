part of 'pages.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: Language.getInstance().languageNotifier,
        builder: (context, language, child) => BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
          builder: (context, stateChangePassword) {
            stateChangePassword as ChangePasswordDataLoaded;

            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: const Text('Ganti Password'),
              ),
              body: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: [
                  const SizedBox(height: 16.0),
                  TextField(
                    focusNode: stateChangePassword.focusNodeOldPassword,
                    controller: stateChangePassword.textControllerOldPassword,
                    decoration: InputDecoration(
                      labelText: 'Password lama',
                      errorText: stateChangePassword.isOldPasswordMatch ? null : 'Password lama salah',
                      suffixIcon: IconButton(
                        onPressed: () => MyApp.changePasswordBloc.add(SetShowOldPassword(value: !stateChangePassword.showOldPassword)),
                        icon: Icon(
                          stateChangePassword.showOldPassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    obscureText: !stateChangePassword.showOldPassword,
                    onSubmitted: (value) => stateChangePassword.focusNodeNewPassword.requestFocus(),
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: PasswordCriteriaInfo(
                      criterias: ChangePasswordBloc.passwordCriteria,
                      text: stateChangePassword.textControllerNewPassword.text.trim(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    focusNode: stateChangePassword.focusNodeNewPassword,
                    controller: stateChangePassword.textControllerNewPassword,
                    decoration: InputDecoration(
                      labelText: 'Password baru',
                      errorText: stateChangePassword.isNewPasswordMatch ? null : 'Password tidak memenuhi kriteria',
                      suffixIcon: IconButton(
                        onPressed: () => MyApp.changePasswordBloc.add(SetShowNewPassword(value: !stateChangePassword.showNewPassword)),
                        icon: Icon(
                          stateChangePassword.showNewPassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    obscureText: !stateChangePassword.showNewPassword,
                    onSubmitted: (value) => stateChangePassword.focusNodeConfirmationNewPassword.requestFocus(),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    focusNode: stateChangePassword.focusNodeConfirmationNewPassword,
                    controller: stateChangePassword.textControllerConfirmationNewPassword,
                    decoration: InputDecoration(
                      labelText: 'Konfirmasi password baru',
                      errorText: stateChangePassword.isConfirmationNewPasswordMatch ? null : 'Tidak sama dengan password baru',
                      suffixIcon: IconButton(
                        onPressed: () => MyApp.changePasswordBloc.add(SetShowConfirmationNewPassword(value: !stateChangePassword.showConfirmationNewPassword)),
                        icon: Icon(
                          stateChangePassword.showConfirmationNewPassword ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    obscureText: !stateChangePassword.showConfirmationNewPassword,
                    onSubmitted: (value) => MyApp.changePasswordBloc.add(ChangePasswordPressed()),
                  ),
                ],
              ),
              bottomNavigationBar: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0 + MediaQuery.viewInsetsOf(context).bottom),
                child: MyFilledButton(
                  onPressed: () => MyApp.changePasswordBloc.add(ChangePasswordPressed()),
                  child: const Text('Ganti'),
                ),
              ),
            );
          },
        ),
      );
}
