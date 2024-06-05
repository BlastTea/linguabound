part of '../blocs.dart';

@immutable
abstract class ChatbotEvent {}

class SetChatbotState extends ChatbotEvent {
  SetChatbotState([this.state]);

  final ChatbotState? state;
}

class SetChatbotToInitial extends ChatbotEvent {}

class SendChatbotData extends ChatbotEvent {}
