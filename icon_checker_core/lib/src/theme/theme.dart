import 'package:icon_checker_core/icon_checker_core.dart';

export 'data/colors.dart';
export 'data/data.dart';
export 'data/icons.dart';
export 'data/radius.dart';
export 'data/typography.dart';

class XTheme extends InheritedWidget {
  const XTheme({Key? key, required this.data, required Widget child})
      : super(key: key, child: child);

  final XThemeData data;

  static XThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<XTheme>();
    return widget!.data;
  }

  @override
  bool updateShouldNotify(covariant XTheme oldWidget) {
    return data != oldWidget.data;
  }
}
