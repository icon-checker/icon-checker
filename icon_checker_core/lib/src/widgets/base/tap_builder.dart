import 'package:icon_checker_core/icon_checker_core.dart';

class TapBuilder extends StatefulWidget {
  const TapBuilder({Key? key, this.onTap, required this.builder})
      : super(key: key);

  final VoidCallback? onTap;
  final Widget Function(BuildContext context, TapVisual visual) builder;

  @override
  State<StatefulWidget> createState() => _TapBuilderState();
}

class _TapBuilderState extends State<TapBuilder> {
  late final TapVisual _visual;

  void _press() {
    if (!_visual.isEnabled) return;
    setState(() {
      _visual.isPressed = true;
    });
  }

  void _release() {
    if (!_visual.isEnabled) return;
    setState(() {
      _visual.isPressed = false;
    });
  }

  void _enter() {
    if (!_visual.isEnabled) return;
    setState(() {
      _visual.isHovered = true;
    });
  }

  void _exit() {
    if (!_visual.isEnabled) return;
    setState(() {
      _visual.isHovered = false;
    });
  }

  void _focusChanged(bool isFocused) {
    if (!_visual.isEnabled) return;
    setState(() {
      _visual.isFocused = isFocused;
    });
  }

  @override
  void initState() {
    _visual = TapVisual(isEnabled: widget.onTap != null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: _focusChanged,
      child: MouseRegion(
          onEnter: (_) => _enter(),
          onExit: (_) => _exit(),
          child: GestureDetector(
            onTap: widget.onTap,
            onTapCancel: () => _release(),
            onTapDown: (_) => _press(),
            onTapUp: (_) => _release(),
            child: widget.builder(context, _visual),
          )),
    );
  }
}

class TapVisual {
  TapVisual({required this.isEnabled});

  bool isEnabled;
  bool isPressed = false;
  bool isHovered = false;
  bool isFocused = false;
}
