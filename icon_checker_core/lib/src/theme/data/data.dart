import 'package:equatable/equatable.dart';
import 'package:icon_checker_core/src/theme/data/durations.dart';

import 'colors.dart';
import 'icons.dart';
import 'radius.dart';
import 'spacing.dart';
import 'typography.dart';

class XThemeData extends Equatable {
  const XThemeData(
      {required this.colors,
      required this.durations,
      required this.icons,
      required this.radius,
      required this.spacing,
      required this.typography});

  factory XThemeData.regular() => XThemeData(
      colors: XColorsData.light(),
      durations: XDurationsData.regular(),
      icons: XIconsData.regular(),
      radius: const XRadiusData.regular(),
      spacing: XSpacingData.regular(),
      typography: XTypographyData.regular());

  final XColorsData colors;
  final XDurationsData durations;
  final XIconsData icons;
  final XRadiusData radius;
  final XSpacingData spacing;
  final XTypographyData typography;

  @override
  List<Object?> get props => [colors, icons, radius, spacing, typography];
}
