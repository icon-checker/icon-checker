import 'package:icon_checker_core/src/theme/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

enum GapSize {
  none,
  small,
  semiSmall,
  regular,
  semiBig,
  big,
}

extension GapSizeExtension on GapSize {
  double getSpacing(XThemeData theme) {
    switch (this) {
      case GapSize.none:
        return 0;
      case GapSize.small:
        return theme.x_spacing.small;
      case GapSize.semiSmall:
        return theme.x_spacing.semiSmall;
      case GapSize.regular:
        return theme.x_spacing.regular;
      case GapSize.semiBig:
        return theme.x_spacing.semiBig;
      case GapSize.big:
        return theme.x_spacing.big;
    }
  }
}

class XGap extends StatelessWidget {
  const XGap(
    this.size, {
    Key? key,
  }) : super(key: key);

  const XGap.small({
    Key? key,
  })  : size = GapSize.small,
        super(key: key);

  const XGap.semiSmall({
    Key? key,
  })  : size = GapSize.semiSmall,
        super(key: key);

  const XGap.regular({
    Key? key,
  })  : size = GapSize.regular,
        super(key: key);

  const XGap.semiBig({
    Key? key,
  })  : size = GapSize.semiBig,
        super(key: key);

  const XGap.big({
    Key? key,
  })  : size = GapSize.big,
        super(key: key);

  final GapSize size;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);
    return Gap(size.getSpacing(theme));
  }
}
