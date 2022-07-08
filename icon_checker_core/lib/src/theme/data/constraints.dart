import 'package:equatable/equatable.dart';

class Constraints extends Equatable {
  const Constraints(
      {required this.sHeight, required this.mHeight, required this.lHeight});

  final double sHeight;
  final double mHeight;
  final double lHeight;

  factory Constraints.regular() =>
      const Constraints(sHeight: 24.0, mHeight: 28.0, lHeight: 32.0);

  @override
  List<Object?> get props => [sHeight, mHeight, lHeight];
}
