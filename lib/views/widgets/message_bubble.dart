part of 'widgets.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.message,
    this.isSender = false,
    this.withTail = true,
    required this.sentAt,
  });

  final String message;
  final bool isSender;
  final bool withTail;
  final TimeOfDay sentAt;

  @override
  Widget build(BuildContext context) => Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: CustomPaint(
          painter: MessageBubblePainter(
            // TODO: change color
            color: isSender ? Theme.of(context).colorScheme.primary : Colors.grey.withOpacity(0.5),
            alignment: isSender ? Alignment.topRight : Alignment.topLeft,
            tail: withTail,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(isSender ? 10.0 : 20.0, 10.0, isSender ? 20.0 : 10.0, 10.0),
            child: _MessageBubble(
              message: message,
              sentAt: sentAt,
              isSender: isSender,
            ),
          ),
        ),
      );
}

/// https://github.com/prahack/chat_bubbles/blob/master/lib/bubbles/bubble_special_one.dart
class MessageBubblePainter extends CustomPainter {
  MessageBubblePainter({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  final Color color;
  final Alignment alignment;
  final bool tail;
  final double _radius = 10.0;
  final double _x = 10.0;

  @override
  void paint(Canvas canvas, Size size) {
    if (alignment == Alignment.topRight) {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
        var path = Path();
        path.moveTo(size.width - _x, 0);
        path.lineTo(size.width - _x, 10);
        path.lineTo(size.width, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              size.width - _x,
              0.0,
              size.width,
              size.height,
              topRight: const Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0,
              size.width - _x,
              size.height,
              bottomLeft: Radius.circular(_radius),
              bottomRight: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
        var path = Path();
        path.moveTo(_x, 0);
        path.lineTo(_x, 10);
        path.lineTo(0, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              0,
              0.0,
              _x,
              size.height,
              topLeft: const Radius.circular(3),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        canvas.drawRRect(
            RRect.fromLTRBAndCorners(
              _x,
              0,
              size.width,
              size.height,
              bottomRight: Radius.circular(_radius),
              topRight: Radius.circular(_radius),
              bottomLeft: Radius.circular(_radius),
              topLeft: Radius.circular(_radius),
            ),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    }
  }

  @override
  bool shouldRepaint(MessageBubblePainter oldDelegate) => oldDelegate.color != color || oldDelegate.alignment != alignment || oldDelegate.tail != tail;
}

class _MessageBubble extends LeafRenderObjectWidget {
  const _MessageBubble({
    required this.message,
    required this.sentAt,
    required this.isSender,
  });

  final String message;
  final TimeOfDay sentAt;
  final bool isSender;

  @override
  RenderObject createRenderObject(BuildContext context) => _RenderMessageBubble(
        message: message,
        sentAt: sentAt,
        textDirection: Directionality.of(context),
        colorScheme: Theme.of(context).colorScheme,
        textTheme: Theme.of(context).textTheme,
        isSender: isSender,
      );

  @override
  void updateRenderObject(BuildContext context, _RenderMessageBubble renderObject) => renderObject
    ..message = message
    ..sentAt = sentAt;
}

class _RenderMessageBubble extends RenderBox {
  _RenderMessageBubble({
    required String message,
    required TimeOfDay sentAt,
    required TextDirection textDirection,
    required this.colorScheme,
    required this.textTheme,
    required this.isSender,
  }) {
    _message = message;
    _sentAt = sentAt;

    _messageTextPainter = TextPainter(
      text: _messageTextSpan,
      textDirection: textDirection,
    );

    _sentAtTextPainter = TextPainter(
      text: _sentAtTextSpan,
      textDirection: textDirection,
    );
  }

  late TextPainter _messageTextPainter;
  late TextPainter _sentAtTextPainter;

  late double sentAtWidth;
  late double sentAtHeight;

  final ColorScheme colorScheme;

  final TextTheme textTheme;

  final bool isSender;

  late String _message;
  String get message => _message;
  set message(String value) {
    if (value == message) {
      return;
    }

    _message = value;
    markNeedsLayout();
  }

  late TimeOfDay _sentAt;
  TimeOfDay get sentAt => _sentAt;
  set sentAt(TimeOfDay value) {
    if (value == sentAt) {
      return;
    }

    _sentAt = value;
    markNeedsLayout();
  }

  TextSpan get _messageTextSpan => TextSpan(text: message, style: textTheme.titleSmall!.copyWith(color: !isSender ? kColorWhite : colorScheme.onPrimary));

  TextSpan get _sentAtTextSpan => TextSpan(text: sentAt.toFormattedString(), style: textTheme.bodyMedium!.copyWith(color: !isSender ? kColorWhite : colorScheme.onPrimary));

  @override
  void performLayout() {
    BoxConstraints contentConstraints = constraints.copyWith(minWidth: 100.0);

    _messageTextPainter.layout(maxWidth: contentConstraints.maxWidth, minWidth: contentConstraints.minWidth);
    final messageTextLines = _messageTextPainter.computeLineMetrics();

    _sentAtTextPainter.layout(maxWidth: contentConstraints.maxWidth, minWidth: contentConstraints.minWidth);
    final sentAtTextLine = _sentAtTextPainter.computeLineMetrics().single;

    double longestLineWidth = 0.0;
    for (final line in messageTextLines) {
      longestLineWidth = max(longestLineWidth, line.width);
    }

    final double messageHeight = messageTextLines.first.height * messageTextLines.length;

    sentAtWidth = sentAtTextLine.width;
    sentAtHeight = sentAtTextLine.height;

    size = contentConstraints.constrain(Size(longestLineWidth, messageHeight + sentAtHeight + 2.0));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _messageTextPainter.paint(context.canvas, offset);
    _sentAtTextPainter.paint(context.canvas, offset + Offset(size.width - sentAtWidth, size.height - sentAtHeight));
  }
}
