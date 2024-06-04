part of '../blocs.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.textControllerEmail,
    required this.textControllerPassword,
    required this.isPasswordVisible,
  });

  final TextEditingController textControllerEmail;
  final TextEditingController textControllerPassword;

  final bool isPasswordVisible;
}
