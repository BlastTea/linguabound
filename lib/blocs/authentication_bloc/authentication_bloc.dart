part of '../blocs.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(_authenticationDataLoaded) {
    on<SetAuthenticationState>((event, emit) => emit(event.state ?? _authenticationDataLoaded));

    on<SetSignInPasswordVisible>((event, emit) {
      _isSignInPasswordVisible = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SignInPressed>((event, emit) async {
      if (_textControllerEmailSignIn.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Email masih kosong')));
        return;
      }

      if (_textControllerPasswordSignIn.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Password masih kosong')));
        return;
      }

      showLoadingDialog();

      try {
        await ApiHelper.signIn(
          email: _textControllerEmailSignIn.text.trim(),
          password: _textControllerPasswordSignIn.text.trim(),
        );
      } catch (e) {
        NavigationHelper.back();
        await ApiHelper.handleError(e);
        return;
      }

      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(SlidePageRoute(pageBuilder: (context) => HomePage(key: homePageKey)));
      await Future.delayed(Durations.medium3);
    });

    on<SignUpPressed>((event, emit) async {});
  }

  static final TextEditingController _textControllerUsernameSignUp = TextEditingController();
  static final TextEditingController _textControllerNameSignUp = TextEditingController();
  static final TextEditingController _textControllerEmailSignUp = TextEditingController();
  static final TextEditingController _textControllerPasswordSignUp = TextEditingController();
  static final TextEditingController _textControllerPasswordConfirmationSignUp = TextEditingController();
  static final TextEditingController _textControllerEmailSignIn = TextEditingController();
  static final TextEditingController _textControllerPasswordSignIn = TextEditingController();

  static bool _isSignInPasswordVisible = false;
  static bool _isSignUpPasswordVisible = false;
  static bool _isSignUpPasswordConfirmationVisible = false;

  static AuthenticationDataLoaded get _authenticationDataLoaded => AuthenticationDataLoaded(
        textControllerUsernameSignUp: _textControllerUsernameSignUp,
        textControllerNameSignup: _textControllerNameSignUp,
        textControllerEmailSignUp: _textControllerEmailSignUp,
        textControllerPasswordSignUp: _textControllerPasswordSignUp,
        textControllerPasswordConfirmationSignUp: _textControllerPasswordConfirmationSignUp,
        textControllerEmailSignIn: _textControllerEmailSignIn,
        textControllerPasswordSignIn: _textControllerPasswordSignIn,
        isSignInPasswordVisible: _isSignInPasswordVisible,
        isSignUpPasswordVisible: _isSignUpPasswordVisible,
        isSignUpPasswordConfirmationVisible: _isSignUpPasswordConfirmationVisible,
      );

  void _setStateToInitial() {
    _textControllerUsernameSignUp.clear();
    _textControllerNameSignUp.clear();
    _textControllerEmailSignUp.clear();
    _textControllerPasswordSignUp.clear();
    _textControllerPasswordConfirmationSignUp.clear();
    _textControllerEmailSignIn.clear();
    _textControllerPasswordSignIn.clear();

    _isSignInPasswordVisible = false;
    _isSignUpPasswordVisible = false;
    _isSignUpPasswordConfirmationVisible = false;
  }
}
