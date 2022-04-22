import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class Colors extends Equatable {
  const Colors(
      {required this.labels,
      required this.blue,
      required this.hoverBackground,
      required this.pressedBackground});

  factory Colors.dark() => const Colors(
      labels: Color(0xFFCBCBCB),
      blue: Color(0xFF429cd7),
      hoverBackground: Color(0xFF3a4245),
      pressedBackground: Color(0xFF425157));

  final Color labels;
  final Color blue;
  final Color hoverBackground;
  final Color pressedBackground;

  @override
  List<Object?> get props => [labels, blue, hoverBackground, pressedBackground];
}
