import 'package:equatable/equatable.dart';

class Opacities extends Equatable {
  const Opacities(
      {required this.regularOpacity, required this.disabledOpacity});

  factory Opacities.regular() =>
      const Opacities(regularOpacity: 1.0, disabledOpacity: 0.5);

  final double regularOpacity;
  final double disabledOpacity;

  @override
  List<Object?> get props => [regularOpacity, disabledOpacity];
}
