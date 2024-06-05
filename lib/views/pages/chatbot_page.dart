part of 'pages.dart';

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ChatbotBloc, ChatbotState>(
        builder: (context, stateChatbot) {
          stateChatbot as ChatbotDataLoaded;

          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () => NavigationHelper.back(),
                icon: const Icon(Icons.chevron_left),
              ),
              centerTitle: true,
              title: const Text('Chatbot'),
              foregroundColor: kColorWhite,
              backgroundColor: kColorSurface,
            ),
            body: Column(
              children: [
                Expanded(
                  child: stateChatbot.data.isEmpty
                      ? Container()
                      : ListView.builder(
                          // key: ValueKey(stateChatbot.messageBubbleList!.data[0].length),
                          key: stateChatbot.messageBubbleKey,
                          controller: stateChatbot.scrollController,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          reverse: true,
                          itemBuilder: (context, dataIndex) {
                            MessageBubbleData data = stateChatbot.messageBubbleList!.data[0][dataIndex];

                            if (data is MessageBubbleDataText) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: data.isSender ? 48.0 : 0.0,
                                      right: data.isSender ? 0.0 : 48.0,
                                    ),
                                    child: MessageBubble(
                                      message: data.message ?? '-',
                                      sentAt: data.sentAt != null ? TimeOfDay.fromDateTime(data.sentAt!) : TimeOfDay.fromDateTime(DateTime.now()),
                                      isSender: data.isSender,
                                    ),
                                  ),
                                  const SizedBox(height: 2.0),
                                ],
                              );
                            }

                            data as MessageBubbleDataDateTime;

                            return Center(
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 8.0),
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  borderRadius: BorderRadius.circular(kShapeSmall),
                                ),
                                child: Text(
                                  data.dateTime?.toFormattedDate(withWeekday: true, withMonthName: true) ?? '?',
                                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                ),
                              ),
                            );
                          },
                          itemCount: stateChatbot.messageBubbleList!.data[0].length,
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 200.0,
                          ),
                          child: TextField(
                            controller: stateChatbot.textControllerText,
                            textCapitalization: TextCapitalization.sentences,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      IconButton.filled(
                        onPressed: stateChatbot.isGenerating ? null : () => MyApp.chatbotBloc.add(SendChatbotData()),
                        icon: const Icon(Icons.send),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}
