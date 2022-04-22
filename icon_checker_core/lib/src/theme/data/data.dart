import 'package:equatable/equatable.dart';
import 'package:icon_checker_core/src/theme/data/durations.dart';
import 'package:icon_checker_core/src/theme/data/spacing.dart';

import 'colors.dart';
import 'constraints.dart';
import 'opacities.dart';
import 'spacing.dart';

import 'icons.dart';
import 'radius.dart';
import 'x_spacing.dart';
import 'typography.dart';

class XThemeData extends Equatable {
  const XThemeData(
      {required this.constraints,
      required this.colors,
      required this.opacities,
      required this.spacing,
      required this.durations,
      required this.icons,
      required this.radius,
      required this.x_spacing,
      required this.typography});

  factory XThemeData.regular() => XThemeData(
      colors: Colors.dark(),
      constraints: Constraints.regular(),
      opacities: Opacities.regular(),
      spacing: Spacing.regular(),
      durations: Durations.regular(),
      icons: XIconsData.regular(),
      radius: const XRadiusData.regular(),
      x_spacing: XSpacingData.regular(),
      typography: XTypographyData.regular());

  final Colors colors;
  final Constraints constraints;
  final Opacities opacities;
  final Spacing spacing;

  final Durations durations;
  final XIconsData icons;
  final XRadiusData radius;
  final XSpacingData x_spacing;
  final XTypographyData typography;

  @override
  List<Object?> get props =>
      [constraints, icons, radius, x_spacing, typography];
}