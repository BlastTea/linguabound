part of '../blocs.dart';

class ChangePasswordBloc extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(_changePasswordDataLoaded) {
    _textControllerNewPassword.addListener(() => add(SetChangePasswordState()));

    on<SetChangePasswordState>((event, emit) => emit(event.state ?? _changePasswordDataLoaded));

    on<SetShowOldPassword>((event, emit) {
      _showOldPassword = event.value;
      emit(_changePasswordDataLoaded);
    });

    on<SetShowNewPassword>((event, emit) {
      _showNewPassword = event.value;
      emit(_changePasswordDataLoaded);
    });

    on<SetShowConfirmationNewPassword>((event, emit) {
      _showConfirmationNewPassword = event.value;
      emit(_changePasswordDataLoaded);
    });

    on<ChangePasswordPressed>((event, emit) async {
      _isNewPasswordMatch = true;
      _isConfirmationNewPasswordMatch = true;
      emit(_changePasswordDataLoaded);

      _isConfirmationNewPasswordMatch = _textControllerNewPassword.text.trim() == _textControllerConfirmationNewPassword.text.trim();

      if (!_isConfirmationNewPasswordMatch || PasswordCriteriaInfo.checkCriteria(criterias: passwordCriteria, text: _textControllerNewPassword.text.trim()).length < passwordCriteria.length) {
        if (PasswordCriteriaInfo.checkCriteria(criterias: passwordCriteria, text: _textControllerNewPassword.text.trim()).length < passwordCriteria.length) {
          _isNewPasswordMatch = false;
        }
        emit(_changePasswordDataLoaded);
        return;
      }

      showLoadingDialog();

      try {
        await ApiHelper.post(
          pathUrl: dotenv.env['ENDPOINT_PROFILE_UPDATE_PASSWORD']!,
          body: {
            'old_password': _textControllerOldPassword.text.trim(),
            'password': _textControllerNewPassword.text.trim(),
          },
        );
      } catch (e) {
        NavigationHelper.back();

        if (e is Map && e['data']['message'] != null && e['data']['message'] == 'Harap masukkan password lama yang sesuai!') {
          _isOldPasswordMatch = false;
          emit(_changePasswordDataLoaded);
        }

        ApiHelper.handleError(e);
        return;
      }

      NavigationHelper.back();
      _isOldPasswordMatch = true;
      _isNewPasswordMatch = true;
      _isConfirmationNewPasswordMatch = true;

      _showOldPassword = false;
      _showNewPassword = false;
      _showConfirmationNewPassword = false;

      _textControllerOldPassword.text = '';
      _textControllerNewPassword.text = '';
      _textControllerConfirmationNewPassword.text = '';
      emit(_changePasswordDataLoaded);

      NavigationHelper.clearSnackBars();
      NavigationHelper.showSnackBar(const SnackBar(content: Text('Password berhasil diperbarui')));
      NavigationHelper.back();
    });
  }

  static final FocusNode _focusNodeOldPassword = FocusNode();
  static final FocusNode _focusNodeNewPassword = FocusNode();
  static final FocusNode _focusNodeConfirmationNewPassword = FocusNode();

  static final TextEditingController _textControllerOldPassword = TextEditingController();
  static final TextEditingController _textControllerNewPassword = TextEditingController();
  static final TextEditingController _textControllerConfirmationNewPassword = TextEditingController();

  static bool _showOldPassword = false;
  static bool _showNewPassword = false;
  static bool _showConfirmationNewPassword = false;

  static bool _isOldPasswordMatch = true;
  static bool _isNewPasswordMatch = true;
  static bool _isConfirmationNewPasswordMatch = true;

  static ChangePasswordDataLoaded get _changePasswordDataLoaded => ChangePasswordDataLoaded(
        focusNodeOldPassword: _focusNodeOldPassword,
        focusNodeNewPassword: _focusNodeNewPassword,
        focusNodeConfirmationNewPassword: _focusNodeConfirmationNewPassword,
        textControllerOldPassword: _textControllerOldPassword,
        textControllerNewPassword: _textControllerNewPassword,
        textControllerConfirmationNewPassword: _textControllerConfirmationNewPassword,
        showOldPassword: _showOldPassword,
        showNewPassword: _showNewPassword,
        showConfirmationNewPassword: _showConfirmationNewPassword,
        isOldPasswordMatch: _isOldPasswordMatch,
        isNewPasswordMatch: _isNewPasswordMatch,
        isConfirmationNewPasswordMatch: _isConfirmationNewPasswordMatch,
      );

  static List<PasswordCriteria> get passwordCriteria => PasswordCriteria.getAllvalues(minLength: 8);
}
