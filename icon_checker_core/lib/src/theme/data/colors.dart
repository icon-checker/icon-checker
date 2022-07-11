import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class Colors extends Equatable {
  const Colors(
      {required this.labels,
      required this.pressedLabels,
      required this.blue,
      required this.hoverBackground,
      required this.pressedBackground,
      required this.background});

  factory Colors.dark() => const Colors(
      labels: Color(0xFF3d9dd2),
      pressedLabels: Color(0xFFFFFFFF),
      blue: Color(0xFF429cd7),
      hoverBackground: Color(0xFFedf7fc),
      pressedBackground: Color(0xFF228fcd),
      background: Color(0xFFFFFFFF));

  final Color labels;
  final Color pressedLabels;
  final Color blue;
  final Color hoverBackground;
  final Color pressedBackground;
  final Color background;

  @override
  List<Object?> get props => [labels, blue, hoverBackground, pressedBackground];
}
