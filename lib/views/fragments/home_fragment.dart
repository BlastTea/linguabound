part of 'fragments.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          SizedBox(height: MediaQuery.viewPaddingOf(context).top),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IgnorePointer(
                child: MyFilledButton.circle(
                  radius: 40.0,
                  padding: EdgeInsets.zero,
                  pressedBottomBorderWidth: 0.0,
                  onPressed: () {},
                  image: const DecorationImage(
                    image: NetworkImage(kDummyPictureProfileUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/svgs/fire.svg'),
                  const SizedBox(width: 8.0),
                  const Text('1 Star'),
                  const SizedBox(width: 32.0),
                  SvgPicture.asset('assets/svgs/exp.svg'),
                  const SizedBox(width: 8.0),
                  const Text('120 Exp'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text('Selamat datang, ${currentUser?.name ?? 'Guest'}! 👋', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16.0),
          BannerContainer(
            title: const Text('10 dalam 1 sesi'),
            subtitle: const Text('Marilah terbuka pada hal-hal yang paling penting'),
            actions: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text(
                  'Meet Sekarang',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: kColorBorder),
                ),
              ),
              const SizedBox(width: 8.0),
              const Icon(
                Icons.date_range_outlined,
                color: kColorBorder,
                size: 17.0,
              )
            ],
            image: Image.asset('assets/images/Meetup Icon.png'),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Flexible(
                child: MyFilledButton.tonal(
                  onPressed: () => homePageKey.currentState?.setSelectedIndex(1),
                  icon: SvgPicture.asset('assets/svgs/exercise.svg'),
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: kColorPrimary),
                  padding: const EdgeInsets.all(8.0),
                  borderColor: kColorBorder,
                  minHorizontalPadding: 8.0,
                  pressedBottomBorderWidth: 0.0,
                  bottomBorderOnly: true,
                  child: const Text('Latihan'),
                ),
              ),
              const SizedBox(width: 16.0),
              Flexible(
                child: MyFilledButton.tonal(
                  onPressed: () => homePageKey.currentState?.setSelectedIndex(2),
                  icon: SvgPicture.asset('assets/svgs/meet.svg'),
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(color: kColorPrimary),
                  padding: const EdgeInsets.all(8.0),
                  borderColor: kColorBorder,
                  minHorizontalPadding: 8.0,
                  pressedBottomBorderWidth: 0.0,
                  bottomBorderOnly: true,
                  child: const Text('Meet'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text('Cek Leaderboard', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          MyFilledButton.tonal(
            onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const LeaderboardPage())),
            icon: SvgPicture.asset('assets/svgs/chest.svg'),
            padding: const EdgeInsets.all(16.0),
            borderColor: kColorBorder,
            minHorizontalPadding: 16.0,
            pressedBottomBorderWidth: 0.0,
            bottomBorderOnly: true,
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width - 32.0 - 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Leaderboard kamu!',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kColorBorder),
                      ),
                      const SizedBox(width: 8.0),
                      const Icon(Icons.arrow_forward, color: kColorBorder),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    // 'You\'ve Reached a Great Milestone! Celebrate Your Victory.',
                    'Kamu telah mencapai tonggak sejarah yang luar biasa! Rayakan Kemenangan Kamu.',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: kColorBorder),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Text('Yuk, belajar bareng kita!', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/forums.svg'),
            title: const Text('Berkomunikasi dengan percaya diri'),
            subtitle: const Text('Lebih dari 60.200 latihan interaktif tanpa stres'),
            textColor: kColorWhite,
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/word card.svg'),
            title: const Text('Membangun kosakata yang luas'),
            subtitle: const Text('Lebih dari 6.400 kata dan frasa praktis'),
            textColor: kColorWhite,
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/watch.svg'),
            title: const Text('Membentuk kebiasaan belajar'),
            subtitle: const Text('Pengingat cerdas, tantangan menyenangkan, dan lainnya'),
            textColor: kColorWhite,
          ),
          const SizedBox(height: 32.0),
        ],
      );
}
