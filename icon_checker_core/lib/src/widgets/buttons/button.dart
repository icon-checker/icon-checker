import 'package:icon_checker_core/icon_checker_core.dart';
import 'package:icon_checker_core/src/widgets/base/tap_builder.dart';

class Button extends StatelessWidget {
  const Button({Key? key, this.onTap, this.child, this.icon})
      : _text = null,
        super(key: key);

  const Button.text(String text, {Key? key, this.onTap})
      : child = null,
        icon = null,
        _text = text,
        super(key: key);

  final VoidCallback? onTap;
  final Widget? child;
  final Widget? icon;
  final String? _text;

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);

    return TapBuilder(
        onTap: onTap,
        builder: (context, visual) {
          final backgroundColor = visual.isPressed
              ? theme.colors.pressedBackground
              : visual.isHovered
                  ? theme.colors.hoverBackground
                  : theme.colors.background;

          final foregroundColor = theme.colors.labels;

          return ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: theme.constraints.sHeight,
                  maxHeight: theme.constraints.sHeight),
              child: Opacity(
                  opacity: visual.isEnabled
                      ? theme.opacities.regularOpacity
                      : theme.opacities.disabledOpacity,
                  child: AnimatedContainer(
                      duration: theme.durations.regular,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: theme.radius.asBorderRadius().small,
                          border: Border.all(color: theme.colors.labels)),
                      padding: EdgeInsets.only(
                          left: theme.spacing.m, right: theme.spacing.m),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (_text != null)
                            Label.regular(_text!,
                                color: visual.isPressed
                                    ? theme.colors.pressedLabels
                                    : theme.colors.labels)
                          else if (child != null)
                            child!
                        ],
                      ))));
        });
  }
}
