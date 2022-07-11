import 'package:icon_checker_core/icon_checker_core.dart';

enum TextLevel { pill, title1 }

class Label extends StatelessWidget {
  const Label.regular(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = TextLevel.pill,
        super(key: key);

  const Label.title1(
    this.data, {
    Key? key,
    this.color,
    this.fontSize,
    this.maxLines,
  })  : level = TextLevel.title1,
        super(key: key);

  final String data;
  final TextLevel level;
  final Color? color;
  final double? fontSize;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);
    final color = this.color ?? theme.colors.labels;
    final style = () {
      switch (level) {
        case TextLevel.pill:
          return theme.typography.textStyle;
        case TextLevel.title1:
          return theme.typography.titleStyle;
      }
    }();
    return Text(
      data,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
    );
  }
}
