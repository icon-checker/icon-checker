import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class Colors extends Equatable {
  const Colors(
      {required this.labels,
      required this.blue,
      required this.hoverBackground,
      required this.pressedBackground,
      required this.background});

  factory Colors.dark() => const Colors(
      labels: Color(0xFFCBCBCB),
      blue: Color(0xFF429cd7),
      hoverBackground: Color(0xFF3a4245),
      pressedBackground: Color(0xFF425157),
      background: Color(0xFF1E1E1E));

  final Color labels;
  final Color blue;
  final Color hoverBackground;
  final Color pressedBackground;
  final Color background;

  @override
  List<Object?> get props => [labels, blue, hoverBackground, pressedBackground];
}
