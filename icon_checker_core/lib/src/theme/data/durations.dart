import 'package:icon_checker_core/src/utils/named.dart';
import 'package:equatable/equatable.dart';

class XDurationsData extends Equatable {
  const XDurationsData({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory XDurationsData.regular() => const XDurationsData(
        areAnimationEnabled: true,
        regular: Duration(milliseconds: 250),
        quick: Duration(milliseconds: 100),
      );

  final bool areAnimationEnabled;
  final Duration regular;
  final Duration quick;

  @override
  List<Object?> get props => [
        areAnimationEnabled,
        regular.named('regular'),
        quick.named('quick'),
      ];
}
