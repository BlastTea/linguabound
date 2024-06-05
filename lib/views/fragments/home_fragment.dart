part of 'fragments.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: MediaQuery.viewPaddingOf(context).top)),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IgnorePointer(
                  //   child: MyFilledButton.circle(
                  //     radius: 40.0,
                  //     padding: EdgeInsets.zero,
                  //     pressedBottomBorderWidth: 0.0,
                  //     onPressed: () {},
                  //     image: DecorationImage(
                  //       image: CachedNetworkImageProvider(currentUser?.foto ?? ''),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  ImageContainer.hero(
                    tag: 'home profile',
                    width: 40.0,
                    height: 40.0,
                    image: CachedNetworkImageProvider(currentUser?.foto ?? ''),
                    borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                    containerBackgroundColor: const Color(0xFFA590A7),
                    dialogBackgroundColor: const Color(0xFFA590A7),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset('assets/svgs/profile.svg'),
                    ),
                  ),
                  if (currentUser?.role == UserRole.remaja)
                    Row(
                      children: [
                        SvgPicture.asset('assets/svgs/fire.svg'),
                        const SizedBox(width: 8.0),
                        Text('${(currentUser!.detail as Remaja).star} Bintang'),
                        const SizedBox(width: 32.0),
                        SvgPicture.asset('assets/svgs/exp.svg'),
                        const SizedBox(width: 8.0),
                        Text('${(currentUser!.detail as Remaja).exp} Exp'),
                      ],
                    )
                  else ...[
                    const SizedBox(height: 16.0),
                    Text('Selamat datang, ${currentUser?.name ?? 'Guest'}! 👋', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ],
              ),
            ),
          ),
          if (currentUser?.role == UserRole.remaja) ...[
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text('Selamat datang, ${currentUser?.name ?? 'Guest'}! 👋', style: Theme.of(context).textTheme.titleLarge),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: BannerContainer(
                  title: const Text('Chat dengan AI'),
                  subtitle: const Text('Tingkatkan kemampuan bahasa Inggris Kamu dengan teknologi AI!'),
                  actions: [
                    TextButton(
                      onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const ChatbotPage())),
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: Text(
                        'Chat Sekarang',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: kColorBorder),
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    const Icon(
                      Icons.forum,
                      color: kColorBorder,
                      size: 17.0,
                    )
                  ],
                  image: Image.asset('assets/images/Meetup Icon.png'),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Row(
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
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text('Cek Leaderboard', style: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: MyFilledButton.tonal(
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
                          'Kamu telah mencapai tonggak sejarah yang luar biasa!',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(color: kColorBorder),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text('Yuk, belajar bareng kita!', style: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: SvgPicture.asset('assets/svgs/forums.svg'),
                  title: const Text('Berkomunikasi dengan percaya diri'),
                  subtitle: const Text('Lebih dari 60.200 latihan interaktif tanpa stres'),
                  textColor: kColorWhite,
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(horizontal: 16.0), sliver: SliverToBoxAdapter(child: Divider())),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: SvgPicture.asset('assets/svgs/word card.svg'),
                  title: const Text('Membangun kosakata yang luas'),
                  subtitle: const Text('Lebih dari 6.400 kata dan frasa praktis'),
                  textColor: kColorWhite,
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.symmetric(horizontal: 16.0), sliver: SliverToBoxAdapter(child: Divider())),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: ListTile(
                  leading: SvgPicture.asset('assets/svgs/watch.svg'),
                  title: const Text('Membentuk kebiasaan belajar'),
                  subtitle: const Text('Pengingat cerdas, tantangan menyenangkan, dan lainnya'),
                  textColor: kColorWhite,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 32.0)),
          ] else ...[
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text('Leaderboard', style: Theme.of(context).textTheme.headlineMedium),
              ),
            ),
            BlocBuilder<LeaderboardBloc, LeaderboardState>(
              builder: (context, stateLeaderboard) {
                if (stateLeaderboard is LeaderboardDataLoaded) {
                  return SliverFillRemaining(
                    child: CustomScrollView(
                      slivers: LeaderboardPage.buildListLeaderboards(
                        context: context,
                        stateLeaderboard: stateLeaderboard,
                        withTopPadding: false,
                      ),
                    ),
                  );
                } else if (stateLeaderboard is LeaderboardError) {
                  return SliverFillRemaining(
                    hasScrollBody: false,
                    child: ErrorOccuredButton(
                      onRetryPressed: () => MyApp.leaderboardBloc.add(InitializeLeaderboardData()),
                    ),
                  );
                }

                return const SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ],
      );
}
