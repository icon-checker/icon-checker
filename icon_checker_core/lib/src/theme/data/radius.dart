import 'package:icon_checker_core/src/utils/named.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

class XRadiusData extends Equatable {
  const XRadiusData({
    required this.small,
    required this.regular,
    required this.large,
  });

  const XRadiusData.regular()
      : small = const Radius.circular(4),
        regular = const Radius.circular(8),
        large = const Radius.circular(16);

  final Radius small;
  final Radius regular;
  final Radius large;

  XBorderRadiusData asBorderRadius() => XBorderRadiusData(this);

  @override
  List<Object?> get props => [
        small.named('small'),
        regular.named('regular'),
        large.named('big'),
      ];
}

class XBorderRadiusData extends Equatable {
  const XBorderRadiusData(this._radius);

  BorderRadius get small => BorderRadius.all(_radius.small);
  BorderRadius get regular => BorderRadius.all(_radius.regular);
  BorderRadius get big => BorderRadius.all(_radius.large);

  final XRadiusData _radius;

  @override
  List<Object?> get props => [_radius];
}
