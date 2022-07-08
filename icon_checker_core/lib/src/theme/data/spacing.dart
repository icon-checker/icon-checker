import 'package:equatable/equatable.dart';

class Spacing extends Equatable {
  const Spacing(
      {required this.xs,
      required this.s,
      required this.m,
      required this.l,
      required this.xl,
      required this.xxl});

  factory Spacing.regular() =>
      const Spacing(xs: 1.0, s: 2.0, m: 4.0, l: 8.0, xl: 12.0, xxl: 16.0);

  final double xs;
  final double s;
  final double m;
  final double l;
  final double xl;
  final double xxl;

  @override
  List<Object?> get props => [xs, s, m, l, xl, xxl];
}
