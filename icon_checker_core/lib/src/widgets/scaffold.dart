import 'package:icon_checker_core/icon_checker_core.dart';

class Scaffold extends StatelessWidget {
  const Scaffold({Key? key, this.body}) : super(key: key);

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    var themeData = XThemeData.regular();
    return MediaQuery.fromWindow(
      child: XTheme(
          data: XThemeData.regular(),
          child: Container(
            color: themeData.colors.background,
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Stack(
                children: [
                  body ?? const Center(),
                ],
              ),
            ),
          )),
    );
  }
}
