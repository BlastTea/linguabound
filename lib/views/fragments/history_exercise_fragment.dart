part of 'fragments.dart';

class HistoryExerciseFragment extends StatelessWidget {
  const HistoryExerciseFragment({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<HistoryExerciseBloc, HistoryExerciseState>(
        builder: (context, stateHistoryExercise) {
          if (stateHistoryExercise is HistoryExerciseDataLoaded) {
            return stateHistoryExercise.exp == null || stateHistoryExercise.star == null
                ? SafeArea(
                    child: Center(
                      child: Text(
                        'Belum terhubung ke Remaja',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  )
                : RefreshIndicator(
                    onRefresh: () {
                      Completer<bool> completer = Completer();
                      MyApp.historyExerciseBloc.add(InitializeHistoryExerciseData(completer: completer));
                      return completer.future;
                    },
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(child: SizedBox(height: MediaQuery.viewPaddingOf(context).top)),
                        const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          sliver: SliverToBoxAdapter(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svgs/fire.svg'),
                                    const SizedBox(width: 8.0),
                                    Text('${stateHistoryExercise.star} Bintang'),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset('assets/svgs/exp.svg'),
                                    const SizedBox(width: 8.0),
                                    Text('${stateHistoryExercise.exp} Exp'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          sliver: SliverToBoxAdapter(
                            child: Text('History Remaja', style: Theme.of(context).textTheme.headlineSmall),
                          ),
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          sliver: SliverList.builder(
                            itemBuilder: (context, index) {
                              HistoryExercise historyExercise = stateHistoryExercise.historyExercises[index];

                              return Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('${historyExercise.namaBagian ?? '-'}・${historyExercise.namaSubBagian ?? '-'}'),
                                            const SizedBox(height: 8.0),
                                            Text('Nilai : ${historyExercise.nilai}'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (index != 9) const Divider(),
                                ],
                              );
                            },
                            itemCount: stateHistoryExercise.historyExercises.length,
                          ),
                        ),
                      ],
                    ),
                  );
          } else if (stateHistoryExercise is HistoryExerciseError) {
            return SafeArea(
              child: ErrorOccuredButton(
                onRetryPressed: () => MyApp.historyExerciseBloc.add(InitializeHistoryExerciseData()),
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
}
