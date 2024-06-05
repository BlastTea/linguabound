part of '../blocs.dart';

@immutable
abstract class EditProfileState {}

class EditProfileInitial extends EditProfileState {}

class EditProfileError extends EditProfileState {}

class EditProfileDataLoaded extends EditProfileState {
  EditProfileDataLoaded({
    required this.textControllerName,
    required this.textControllerUsername,
    required this.currentImageData,
  });

  final TextEditingController textControllerName;
  final TextEditingController textControllerUsername;

  final Uint8List? currentImageData;
}
