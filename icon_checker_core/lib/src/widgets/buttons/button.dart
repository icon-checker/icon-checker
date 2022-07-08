import 'package:icon_checker_core/icon_checker_core.dart';

class Button extends StatefulWidget {
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

  //tbd icon

  @override
  State<StatefulWidget> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isPressed = false;
  bool _isHovered = false;

  bool _isEnabled() => widget.onTap != null;

  void _press() {
    if (!_isEnabled()) return;
    setState(() {
      _isPressed = true;
    });
  }

  void _release() {
    if (!_isEnabled()) return;
    setState(() {
      _isPressed = false;
    });
  }

  void _enter() {
    if (!_isEnabled()) return;
    setState(() {
      _isHovered = true;
    });
  }

  void _exit() {
    if (!_isEnabled()) return;
    setState(() {
      _isHovered = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = XTheme.of(context);

    // todo new color class, use enum for visual state.
    final backgroundColor = _isPressed
        ? theme.colors.pressedBackground
        : _isHovered
            ? theme.colors.hoverBackground
            : null;
    final foregroundColor = theme.colors.labels;

    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: theme.constraints.sHeight,
          maxHeight: theme.constraints.sHeight),
      child: MouseRegion(
        onEnter: (_) => _enter(),
        onExit: (_) => _exit(),
        child: GestureDetector(
          onTap: widget.onTap,
          onTapDown: (_) => _press(),
          onTapUp: (_) => _release(),
          child: Opacity(
            opacity: _isEnabled()
                ? theme.opacities.regularOpacity
                : theme.opacities.disabledOpacity,
            child: AnimatedContainer(
              duration: theme.durations.quick,
              decoration: BoxDecoration(
                color: backgroundColor,
                // todo: radius
              ),
              padding: EdgeInsets.only(
                  left: theme.spacing.m, right: theme.spacing.m),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget._text != null)
                    Text(widget._text!,
                        // todo: font style
                        style: theme.typography.buttonStyle
                            .copyWith(color: foregroundColor))
                  else if (widget.child != null)
                    widget.child!
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
