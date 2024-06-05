part of '../blocs.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(EditProfileInitial()) {
    on<SetEditProfileState>((event, emit) => emit(event.state ?? _editProfileDataLoaded));

    on<SetEditProfileToInitial>((event, emit) {
      _textControllerName.clear();
      _textControllerUsername.clear();

      _currentImageData = null;

      emit(EditProfileInitial());
    });

    on<InitializeEditProfileData>((event, emit) async {
      _textControllerName.text = currentUser?.name ?? '';
      _textControllerUsername.text = currentUser?.detail?.mapOrNull(remaja: (value) => value.username) ?? '';

      try {
        _currentImageData = await ApiHelper.getFile(uri: Uri.parse(currentUser!.foto!));
      } catch (e) {
        // Ignored, really
      }

      emit(_editProfileDataLoaded);
    });

    on<ChangePhotoEditProfilePressed>((event, emit) async {
      ChangeImageResult result = await ImageContainer.handleChangeImage(
        showDelete: _currentImageData != null,
        sheetTitleText: 'Ganti Foto Profile',
        sheetImageItemWidth: 88.0,
      );

      if (result.isDelete) {
        _currentImageData = null;
        emit(_editProfileDataLoaded);
        return;
      }

      _currentImageData = await result.image?.readAsBytes();

      emit(_editProfileDataLoaded);
    });

    on<SaveEditProfilePressed>((event, emit) async {
      if (_textControllerName.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Nama masih kosong')));
        return;
      }

      if (currentUser?.role == UserRole.remaja && _textControllerUsername.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Username masih kosong')));
        return;
      }

      FocusManager.instance.primaryFocus?.unfocus();

      showLoadingDialog();

      try {
        await ApiHelper.postMultipart(
          pathUrl: dotenv.env[switch (currentUser?.role) {
            UserRole.remaja => 'ENDPOINT_PROFILE_UPDATE_REMAJA',
            UserRole.parent => 'ENDPOINT_PROFILE_UPDATE_PARENT',
            _ => 'ENDPOINT_PROFILE_UPDATE_REMAJA',
          }]!,
          fields: {
            'name': _textControllerName.text.trim(),
            if (currentUser?.role == UserRole.remaja) 'username': _textControllerUsername.text.trim(),
          },
          files: [
            if (_currentImageData != null) http.MultipartFile.fromBytes('foto', _currentImageData!, filename: 'image.png'),
          ],
        );
      } catch (e) {
        NavigationHelper.back();
        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      NavigationHelper.clearMaterialBanners();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Data berhasil disimpan')));
    });
  }

  final TextEditingController _textControllerName = TextEditingController();
  final TextEditingController _textControllerUsername = TextEditingController();

  Uint8List? _currentImageData;

  EditProfileDataLoaded get _editProfileDataLoaded => EditProfileDataLoaded(
        textControllerName: _textControllerName,
        textControllerUsername: _textControllerUsername,
        currentImageData: _currentImageData,
      );
}
