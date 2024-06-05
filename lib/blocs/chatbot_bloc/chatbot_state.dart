part of '../blocs.dart';

@immutable
abstract class ChatbotState {}

class ChatbotDataLoaded extends ChatbotState {
  ChatbotDataLoaded({
    required this.messageBubbleKey,
    required this.scrollController,
    required this.textControllerText,
    required this.data,
    required this.messageBubbleList,
    required this.isGenerating,
  });

  final Key messageBubbleKey;

  final ScrollController scrollController;

  final TextEditingController textControllerText;

  final List<ChatbotData> data;

  final MessageBubbleList? messageBubbleList;

  final bool isGenerating;
}
