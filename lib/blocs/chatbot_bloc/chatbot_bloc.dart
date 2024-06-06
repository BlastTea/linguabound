part of '../blocs.dart';

class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  ChatbotBloc() : super(_chatbotDataLoaded) {
    on<SetChatbotState>((event, emit) => emit(event.state ?? _chatbotDataLoaded));

    on<SetChatbotToInitial>((event, emit) {
      _textControllerText.clear();

      _data.clear();

      emit(_chatbotDataLoaded);
    });

    on<SendChatbotData>((event, emit) async {
      if (_textControllerText.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(const SnackBar(content: Text('Pesan masih kosong')));
        return;
      }

      _isGenerating = true;

      DateTime now = DateTime.now();

      _data.add(ChatbotData(text: _textControllerText.text, isSender: true, sentAt: now));

      _data.add(ChatbotData(text: '', isSender: false, sentAt: now));

      _messageBubbleList = MessageBubbleList.fromChatbotData(chatbotData: _data.reversed.toList());
      _messageBubbleKey = UniqueKey();
      emit(_chatbotDataLoaded);

      try {
        final responses = model.generateContentStream([Content.text(_textControllerText.text.trim())]);

        _textControllerText.clear();

        int index = _data.length - 1;

        await for (final response in responses) {
          debugPrint('responseChatBot : ${response.text}');
          _data[index].text += response.text ?? '';
          _messageBubbleList = MessageBubbleList.fromChatbotData(chatbotData: _data.reversed.toList());
          _messageBubbleKey = UniqueKey();
          emit(_chatbotDataLoaded);
        }
      } catch (e) {
        ApiHelper.handleError(e);
      }

      _isGenerating = false;
      emit(_chatbotDataLoaded);
    });
  }

  static Key _messageBubbleKey = const ValueKey(0);

  static final ScrollController _scrollController = ScrollController();

  static final TextEditingController _textControllerText = TextEditingController();

  static final List<ChatbotData> _data = [];

  static MessageBubbleList? _messageBubbleList;

  static bool _isGenerating = false;

  static ChatbotDataLoaded get _chatbotDataLoaded => ChatbotDataLoaded(
        messageBubbleKey: _messageBubbleKey,
        scrollController: _scrollController,
        textControllerText: _textControllerText,
        data: _data,
        messageBubbleList: _messageBubbleList,
        isGenerating: _isGenerating,
      );
}
