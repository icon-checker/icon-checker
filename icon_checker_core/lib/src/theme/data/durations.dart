import 'package:icon_checker_core/src/utils/named.dart';
import 'package:equatable/equatable.dart';

class Durations extends Equatable {
  const Durations({
    required this.areAnimationEnabled,
    required this.regular,
    required this.quick,
  });

  factory Durations.regular() => const Durations(
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
