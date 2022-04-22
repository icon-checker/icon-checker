import 'package:icon_checker_core/src/theme/theme.dart';
import 'package:flutter/widgets.dart';

enum XIconSize {
  small,
  regular,
  big,
}

extension XIconSizeExtension on XIconSizesData {
  double resolve(XIconSize size) {
    switch (size) {
      case XIconSize.small:
        return small;
      case XIconSize.regular:
        return regular;
      case XIconSize.big:
        return big;
    }
  }
}

class XIcon extends StatelessWidget {
  const XIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = XIconSize.regular,
  }) : super(key: key);

  const XIcon.small(
    this.data, {
    Key? key,
    this.color,
  })  : size = XIconSize.small,
        super(key: key);

  const XIcon.regular(
    this.data, {
    Key? key,
    this.color,
  })  : size = XIconSize.regular,
        super(key: key);

  const XIcon.big(
    this.data, {
    Key? key,
    this.color,
  })  : size = XIconSize.big,
        super(key: key);

  final String data;
  final Color? color;
  final XIconSize size;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    return Text(
      data,
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: theme.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
    );
  }
}

class XAnimatedIcon extends StatelessWidget {
  const XAnimatedIcon(
    this.data, {
    Key? key,
    this.color,
    this.size = XIconSize.small,
    this.duration = const Duration(milliseconds: 200),
  }) : super(key: key);

  final String data;
  final Color? color;
  final XIconSize size;
  final Duration duration;

  bool get isAnimated => duration.inMilliseconds > 0;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);
    final color = this.color ?? theme.colors.foreground;
    if (!isAnimated) {
      return XIcon(
        data,
        key: key,
        color: color,
        size: size,
      );
    }
    return AnimatedDefaultTextStyle(
      child: Text(
        data,
      ),
      style: TextStyle(
        fontFamily: theme.icons.fontFamily,
        package: theme.icons.fontPackage,
        color: color,
        fontSize: theme.icons.sizes.resolve(size),
        decoration: TextDecoration.none,
      ),
      duration: duration,
    );
  }
}
