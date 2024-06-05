part of 'pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<EditProfileBloc, EditProfileState>(
        builder: (context, stateEditProfile) {
          if (stateEditProfile is EditProfileDataLoaded) {
            return Scaffold(
              body: AutofillGroup(
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      title: const Text('Edit Profile'),
                      centerTitle: true,
                      pinned: true,
                      foregroundColor: kColorWhite,
                      backgroundColor: Theme.of(context).colorScheme.surface,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Align(
                          alignment: Alignment.topCenter,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 150.0 + MediaQuery.viewPaddingOf(context).top,
                                color: Theme.of(context).colorScheme.secondaryContainer,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0 - 150.0 + MediaQuery.viewPaddingOf(context).top,
                                  color: Theme.of(context).colorScheme.surface,
                                ),
                              ),
                              Align(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 90.0),
                                  child: ImageContainer.hero(
                                    key: UniqueKey(),
                                    tag: 'Profile picture',
                                    width: 150.0,
                                    height: 150.0,
                                    containerIconSize: 150.0,
                                    dialogIconSize: 150.0,
                                    icon: Icons.account_circle_outlined,
                                    image: stateEditProfile.currentImageData != null ? MemoryImage(stateEditProfile.currentImageData!) : null,
                                    borderRadius: BorderRadius.circular(75.0),
                                    containerBackgroundColor: const Color(0xFFA590A7),
                                    dialogBackgroundColor: const Color(0xFFA590A7),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset('assets/svgs/profile.svg'),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0.0,
                                right: MediaQuery.sizeOf(context).width / 2 - 56.0 - 32.0,
                                child: IconButton.filled(
                                  onPressed: () => MyApp.editProfileBloc.add(ChangePhotoEditProfilePressed()),
                                  icon: const Icon(Icons.camera_alt),
                                  iconSize: 28.0,
                                  style: const ButtonStyle(
                                    fixedSize: WidgetStatePropertyAll(Size(56.0, 56.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      expandedHeight: 200.0,
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      sliver: SliverToBoxAdapter(
                        child: TextField(
                          controller: stateEditProfile.textControllerName,
                          decoration: const InputDecoration(
                            labelText: 'Nama',
                          ),
                          textInputAction: TextInputAction.next,
                          autofillHints: const [AutofillHints.username],
                        ),
                      ),
                    ),
                    if (currentUser?.role == UserRole.remaja) ...[
                      const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        sliver: SliverToBoxAdapter(
                          child: TextField(
                            controller: stateEditProfile.textControllerUsername,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                            ),
                            autofillHints: const [AutofillHints.username],
                            onEditingComplete: () => MyApp.editProfileBloc.add(SaveEditProfilePressed()),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              bottomNavigationBar: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0 + MediaQuery.viewInsetsOf(context).bottom),
                child: MyFilledButton(
                  onPressed: () => MyApp.editProfileBloc.add(SaveEditProfilePressed()),
                  child: const Text('Simpan'),
                ),
              ),
            );
          } else if (stateEditProfile is EditProfileError) {
            return Scaffold(
              body: SafeArea(
                child: ErrorOccuredButton(
                  onRetryPressed: () => MyApp.editProfileBloc.add(InitializeEditProfileData()),
                ),
              ),
            );
          }

          return const Scaffold(
            body: SafeArea(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      );
}
