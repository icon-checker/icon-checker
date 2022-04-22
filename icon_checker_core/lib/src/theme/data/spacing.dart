import 'package:equatable/equatable.dart';

class Spacing extends Equatable {
  const Spacing(
      {required this.extraSmall,
      required this.small,
      required this.medium,
      required this.large,
      required this.extraLarge,
      required this.extraExtraLarge});

  factory Spacing.regular() => const Spacing(
      extraSmall: 1.0,
      small: 2.0,
      medium: 4.0,
      large: 8.0,
      extraLarge: 12.0,
      extraExtraLarge: 16.0);

  final double extraSmall;
  final double small;
  final double medium;
  final double large;
  final double extraLarge;
  final double extraExtraLarge;

  @override
  List<Object?> get props =>
      [extraSmall, small, medium, large, extraLarge, extraExtraLarge];
}
