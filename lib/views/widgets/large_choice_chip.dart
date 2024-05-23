part of 'widgets.dart';

class LargeChoiceChip extends StatelessWidget {
  const LargeChoiceChip({
    super.key,
    required this.label,
    required this.selected,
    this.onSelected,
  });

  final Widget label;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(14.0)),
        child: InkWell(
          onTap: () => onSelected?.call(!selected),
          borderRadius: const BorderRadius.all(Radius.circular(14.0)),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
            decoration: BoxDecoration(
              // TODO: maybe change the color to appropiate one?
              color: selected ? const Color(0xFFD1B23D) : kColorYellow,
              borderRadius: const BorderRadius.all(
                Radius.circular(14.0),
              ),
            ),
            child: DefaultTextStyle(
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: kColorBlack),
              child: label,
            ),
          ),
        ),
      );
}
