part of 'fragments.dart';

class MeetFragment extends StatelessWidget {
  const MeetFragment({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<MeetBloc, MeetState>(
        builder: (context, stateMeet) {
          if (stateMeet is MeetDataLoaded) {
            return RefreshIndicator(
              onRefresh: () {
                Completer<bool> completer = Completer();
                MyApp.meetBloc.add(InitializeMeetData(completer: completer));
                return completer.future;
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: MediaQuery.viewPaddingOf(context).top)),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        'List Kelas Tersedia',
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    sliver: SliverList.builder(
                      itemBuilder: (context, index) {
                        Meet meet = stateMeet.meets[index];

                        return buildMeetList(
                          context: context,
                          meet: meet,
                        );
                      },
                      itemCount: stateMeet.meets.length,
                    ),
                  ),
                ],
              ),
            );
          } else if (stateMeet is MeetError) {
            return SafeArea(
              child: ErrorOccuredButton(
                onRetryPressed: () => MyApp.meetBloc.add(InitializeMeetData()),
              ),
            );
          }

          return const SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      );

  Widget buildMeetList({
    required BuildContext context,
    required Meet meet,
  }) =>
      Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kColorWhite,
              borderRadius: kBorderRadiusBanner,
              boxShadow: kBannerShadow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // IgnorePointer(
                      //   child: MyFilledButton.circle(
                      //     bottomBorderWidth: 2.0,
                      //     onPressed: () {},
                      //     image: DecorationImage(
                      //       image: CachedNetworkImageProvider(meet.),
                      //     ),
                      //   ),
                      // ),
                      // const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            meet.topik ?? '-',
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kColorBorder),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            meet.deskripsi ?? '-',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                size: 17.0,
                                color: kColorBorder,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.tanggal?.toFormattedDate(withMonthName: true) ?? '-',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Icon(
                                Icons.schedule,
                                size: 17.0,
                                color: kColorBorder,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                '${TimeOfDay.fromDateTime(meet.jamMulai ?? DateTime.now()).toFormattedString()} - ${TimeOfDay.fromDateTime(meet.jamBerakhir ?? DateTime.now()).toFormattedString()}',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FilledButton(
                        onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => DetailMeetPage(meet: meet))),
                        style: FilledButton.styleFrom(
                          backgroundColor: kColorBorder,
                          foregroundColor: kColorWhite,
                        ),
                        child: const Text('Gabung Sekarang'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      );
}
