part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 20.0),
          ListTile(
            leading: ImageContainer.hero(
              tag: 'Profile picture',
              width: 48.0,
              height: 48.0,
              icon: Icons.person,
              image: CachedNetworkImageProvider(currentUser?.foto ?? ''),
              borderRadius: const BorderRadius.all(Radius.circular(24.0)),
              containerBackgroundColor: const Color(0xFFA590A7),
              dialogBackgroundColor: const Color(0xFFA590A7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/svgs/profile.svg'),
              ),
            ),
            title: Text(currentUser?.name ?? 'Guest'),
            trailing: const Icon(Icons.chevron_right),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const EditProfilePage())),
          ),
          const SizedBox(height: 32.0),
          ListTile(
            leading: const Icon(Icons.key),
            title: const Text('Ganti Password'),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const ChangePasswordPage())),
          ),
          if (currentUser?.detail?.mapOrNull(remaja: (value) => value.kodeOrangTua ?? '-', orangTua: (value) => value.kode) != null) ...[
            const Divider(),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('Kode Orang Tua'),
              subtitle: Text(currentUser?.detail?.mapOrNull(remaja: (value) => value.kodeOrangTua, orangTua: (value) => value.kode) ?? '-'),
              iconColor: kColorWhite,
              textColor: kColorWhite,
              onTap: () {
                Clipboard.setData(ClipboardData(text: currentUser?.detail?.mapOrNull(remaja: (value) => value.kodeOrangTua, orangTua: (value) => value.kode) ?? '-'));
                NavigationHelper.clearSnackBars();
                NavigationHelper.showSnackBar(const SnackBar(content: Text('Kode telah disalin ke Clipboard')));
              },
            ),
          ],
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () => ApiHelper.signOut(),
          ),
        ],
      ),
    );
  }
}
