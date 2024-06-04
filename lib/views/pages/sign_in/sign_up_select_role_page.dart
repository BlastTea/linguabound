part of '../pages.dart';

class SignUpSelectRolePage extends StatefulWidget {
  const SignUpSelectRolePage({super.key});

  @override
  State<SignUpSelectRolePage> createState() => _SignUpSelectRolePageState();
}

class _SignUpSelectRolePageState extends State<SignUpSelectRolePage> {
  UserRole? _selectedValue;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            SizedBox(height: MediaQuery.viewPaddingOf(context).top),
            const SizedBox(height: 16.0),
            Text(
              'Mau daftar sebagai apa?',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16.0),
            ...[
              UserRole.remaja,
              UserRole.parent,
            ].map(
              (e) => RadioListTile(
                value: e,
                groupValue: _selectedValue,
                title: Text(e.text),
                secondary: const Icon(Icons.person),
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (value) => setState(() => _selectedValue = value),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MyFilledButton(
            onPressed: _selectedValue == null ? null : () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => SignUpPage(selectedRole: _selectedValue!))),
            child: const Text('Lanjutkan'),
          ),
        ),
      );
}
