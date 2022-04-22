import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';
import 'package:icon_checker_core/src/utils/utils.dart';

const interstateFamily = 'Interstate';

const fontSize10 = 10.0;
const fontSize12 = 12.0;
const fontSize20 = 20.0;
const fontSize28 = 28.0;

class XTypographyData extends Equatable {
  const XTypographyData({
    required this.paragraph1,
    required this.title1,
  });

  factory XTypographyData.regular() => const XTypographyData(
        paragraph1: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontWeight: FontWeight.normal,
          fontSize: fontSize12,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontSize: fontSize20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  factory XTypographyData.small() => const XTypographyData(
        paragraph1: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontWeight: FontWeight.w400,
          fontSize: fontSize10,
          decoration: TextDecoration.none,
        ),
        title1: TextStyle(
          fontFamily: interstateFamily,
          package: package,
          fontSize: fontSize20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      );

  final TextStyle paragraph1;
  final TextStyle title1;

  @override
  List<Object?> get props => [
        title1.named('title1'),
        paragraph1.named('paragraph1'),
      ];
}
