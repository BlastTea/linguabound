part of '../blocs.dart';

@immutable
abstract class ChangePasswordEvent {}

class SetChangePasswordState extends ChangePasswordEvent {
  SetChangePasswordState([this.state]);

  final ChangePasswordState? state;
}

class SetShowOldPassword extends ChangePasswordEvent {
  SetShowOldPassword({required this.value});

  final bool value;
}

class SetShowNewPassword extends ChangePasswordEvent {
  SetShowNewPassword({required this.value});

  final bool value;
}

class SetShowConfirmationNewPassword extends ChangePasswordEvent {
  SetShowConfirmationNewPassword({required this.value});

  final bool value;
}

class ChangePasswordPressed extends ChangePasswordEvent {}
