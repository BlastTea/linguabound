part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final TextEditingController _textControllerParentCode = TextEditingController();

  int _selectedIndex = 0;

  void setSelectedIndex(int index) => setState(() => _selectedIndex = index);

  Future<void> _handleSubmitParentCode() async {
    if (_textControllerParentCode.text.trim().isEmpty) {
      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Kode Orang Tua masih kosong')));
      return;
    }

    showLoadingDialog();

    try {
      await ApiHelper.post(
        pathUrl: dotenv.env['ENDPOINT_LINKED']!,
        body: {
          'kode_orang_tua': _textControllerParentCode.text.trim(),
        },
      );
    } catch (e) {
      NavigationHelper.back();
      ApiHelper.handleError(e);
      return;
    }

    try {
      await ApiHelper.signInWithToken();

      if (currentUser != null) {
        setState(() {});
      }
    } catch (e) {
      NavigationHelper.back();
      ApiHelper.handleError(e);
      return;
    }

    NavigationHelper.back();
  }

  @override
  Widget build(BuildContext context) => currentUser?.role == UserRole.remaja && currentUser?.detail?.mapOrNull(remaja: (value) => value.kodeOrangTua) == null
      ? Scaffold(
          appBar: AppBar(
            leading: const IconButton(
              onPressed: ApiHelper.signOut,
              icon: Icon(Icons.logout),
              tooltip: 'Logout',
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _textControllerParentCode,
                    decoration: const InputDecoration(
                      labelText: 'Masukkan Kode Orang Tua',
                    ),
                    onSubmitted: (value) => _handleSubmitParentCode(),
                  ),
                  const SizedBox(height: 16.0),
                  MyFilledButton(
                    onPressed: _handleSubmitParentCode,
                    child: const Text('Kirim'),
                  ),
                ],
              ),
            ),
          ),
        )
      : Scaffold(
          body: [
            const HomeFragment(),
            if (currentUser?.role == UserRole.remaja) const ExerciseFragment() else const HistoryExerciseFragment(),
            if (currentUser?.role == UserRole.remaja) const MeetFragment(),
            const ProfileFragment(),
          ][_selectedIndex],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarTheme.of(context).copyWith(labelTextStyle: WidgetStatePropertyAll(Theme.of(context).textTheme.bodySmall?.copyWith(color: kColorSurface))),
            child: MyNavigationBar(
              backgroundColor: kColorWhite,
              indicatorShape: const RoundedRectangleBorder(borderRadius: kBorderRadius),
              elevation: 8.0,
              indicatorColor: kColorTonalBorder,
              destinations: [
                MyNavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/home.svg',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Beranda',
                ),
                MyNavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/exercise.svg',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: currentUser?.role == UserRole.remaja ? 'Latihan' : 'Laporan',
                ),
                if (currentUser?.role == UserRole.remaja)
                  MyNavigationDestination(
                    icon: SvgPicture.asset(
                      'assets/svgs/meet.svg',
                      width: 30.0,
                      height: 30.0,
                    ),
                    label: 'Meet',
                  ),
                MyNavigationDestination(
                  icon: SvgPicture.asset(
                    'assets/svgs/profile.svg',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Profil',
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: setSelectedIndex,
            ),
          ),
        );
}
