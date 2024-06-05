part of '../blocs.dart';

@immutable
abstract class EditProfileEvent {}

class SetEditProfileState extends EditProfileEvent {
  SetEditProfileState([this.state]);

  final EditProfileState? state;
}

class SetEditProfileToInitial extends EditProfileEvent {}

class InitializeEditProfileData extends EditProfileEvent {}

class ChangePhotoEditProfilePressed extends EditProfileEvent {}

class SaveEditProfilePressed extends EditProfileEvent {}
