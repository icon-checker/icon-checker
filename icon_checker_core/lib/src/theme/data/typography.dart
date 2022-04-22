import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:icon_checker_core/src/utils/utils.dart';

const interstateFamily = 'Interstate';

const fontSize10 = 10.0;
const fontSize12 = 12.0;
const fontSize20 = 20.0;
const fontSize28 = 28.0;

class Typography extends Equatable {
  const Typography({
    required this.buttonStyle,
    required this.textStyle,
  });

  factory Typography.regular() => const Typography(
        buttonStyle: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontWeight: FontWeight.bold,
          fontSize: fontSize12,
          decoration: TextDecoration.none,
        ),
        textStyle: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontSize: fontSize12,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle buttonStyle;
  final TextStyle textStyle;

  @override
  List<Object?> get props => [buttonStyle, textStyle];
}
