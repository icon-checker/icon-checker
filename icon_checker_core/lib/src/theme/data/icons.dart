import 'package:icon_checker_core/icon_checker_core.dart';
import 'package:equatable/equatable.dart';

const ergosignGlyphIcons2Family = 'ErgosignGlyphIcons2';

const iconSize16 = 16.0;
const iconSize22 = 22.0;
const iconSize32 = 32.0;

class XIconsData extends Equatable {
  const XIconsData({
    required this.fontFamily,
    required this.fontPackage,
    required this.characters,
    required this.sizes,
  });

  /// Icons have been exported with "Export Icon Font" Figma plugin.
  factory XIconsData.regular() => XIconsData(
        fontFamily: ergosignGlyphIcons2Family,
        fontPackage: package,
        characters: XIconCharactersData.regular(),
        sizes: XIconSizesData.regular(),
      );

  final String fontFamily;
  final String? fontPackage;
  final XIconCharactersData characters;
  final XIconSizesData sizes;

  @override
  List<Object?> get props => [
        fontFamily,
        fontPackage,
        characters,
        sizes,
      ];
}

class XIconCharactersData extends Equatable {
  const XIconCharactersData({
    required this.iconAdd,
  });

  factory XIconCharactersData.regular() => const XIconCharactersData(
        iconAdd: '\uE600',
      );

  final String iconAdd;

  @override
  List<Object?> get props => [
        iconAdd.named('iconAdd'),
      ];
}

class XIconSizesData extends Equatable {
  const XIconSizesData({
    required this.small,
    required this.regular,
    required this.big,
  });

  factory XIconSizesData.regular() => const XIconSizesData(
        small: iconSize16,
        regular: iconSize22,
        big: iconSize32,
      );

  final double small;
  final double regular;
  final double big;

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        big.named('big'),
      ];
}
