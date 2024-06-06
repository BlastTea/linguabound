part of '../blocs.dart';

@immutable
abstract class ChangePasswordState {}

class ChangePasswordDataLoaded extends ChangePasswordState {
  ChangePasswordDataLoaded({
    required this.focusNodeOldPassword,
    required this.focusNodeNewPassword,
    required this.focusNodeConfirmationNewPassword,
    required this.textControllerOldPassword,
    required this.textControllerNewPassword,
    required this.textControllerConfirmationNewPassword,
    required this.showOldPassword,
    required this.showNewPassword,
    required this.showConfirmationNewPassword,
    required this.isOldPasswordMatch,
    required this.isNewPasswordMatch,
    required this.isConfirmationNewPasswordMatch,
  });

  final FocusNode focusNodeOldPassword;
  final FocusNode focusNodeNewPassword;
  final FocusNode focusNodeConfirmationNewPassword;

  final TextEditingController textControllerOldPassword;
  final TextEditingController textControllerNewPassword;
  final TextEditingController textControllerConfirmationNewPassword;

  final bool showOldPassword;
  final bool showNewPassword;
  final bool showConfirmationNewPassword;

  final bool isOldPasswordMatch;
  final bool isNewPasswordMatch;
  final bool isConfirmationNewPasswordMatch;
}
