import 'package:equatable/equatable.dart';

class Constraints extends Equatable {
  const Constraints(
      {required this.smallHeight,
      required this.mediumHeight,
      required this.largeHeight});

  final double smallHeight;
  final double mediumHeight;
  final double largeHeight;

  factory Constraints.regular() => const Constraints(
      smallHeight: 24.0, mediumHeight: 28.0, largeHeight: 32.0);

  @override
  List<Object?> get props => [smallHeight, mediumHeight, largeHeight];
}
