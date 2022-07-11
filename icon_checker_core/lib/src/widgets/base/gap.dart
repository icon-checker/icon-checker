import 'package:icon_checker_core/icon_checker_core.dart';

enum GapLevel { custom, small, medium, large }

class Gap extends StatelessWidget {
  const Gap({Key? key, required this.customSpacing, this.isVertical = true})
      : _level = GapLevel.custom,
        super(key: key);

  const Gap.small({Key? key, this.isVertical = true})
      : _level = GapLevel.small,
        customSpacing = 0,
        super(key: key);

  const Gap.medium({Key? key, this.isVertical = true})
      : _level = GapLevel.medium,
        customSpacing = 0,
        super(key: key);

  const Gap.large({Key? key, this.isVertical = true})
      : _level = GapLevel.large,
        customSpacing = 0,
        super(key: key);

  final bool isVertical;
  final GapLevel _level;
  final double customSpacing;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);

    var spacing = () {
      switch (_level) {
        case GapLevel.large:
          return theme.spacing.l;
        case GapLevel.medium:
          return theme.spacing.m;
        case GapLevel.custom:
          return customSpacing;
        default:
          return theme.spacing.s;
      }
    }();

    if (isVertical) {
      return SizedBox(
        width: spacing,
      );
    }

    return SizedBox(height: spacing);
  }
}
