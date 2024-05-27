part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _setSelectedIndex(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Divider(height: 2.0),
            MyNavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              indicatorShape: const RoundedRectangleBorder(borderRadius: kBorderRadius),
              elevation: 8.0,
              indicatorColor: kColorBorder,
              destinations: [
                MyNavigationDestination(
                  icon: Image.asset(
                    'assets/images/home.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Home',
                ),
                MyNavigationDestination(
                  icon: Image.asset(
                    'assets/images/exercise.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Exercise',
                ),
                MyNavigationDestination(
                  icon: Image.asset(
                    'assets/images/profile.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Profile',
                ),
                MyNavigationDestination(
                  icon: Image.asset(
                    'assets/images/video.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Video',
                ),
                MyNavigationDestination(
                  icon: Image.asset(
                    'assets/images/report.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                  label: 'Report',
                ),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: _setSelectedIndex,
            ),
          ],
        ),
      );
}
