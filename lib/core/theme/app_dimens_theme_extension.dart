import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

@immutable
class AppDimensThemeExtension extends ThemeExtension<AppDimensThemeExtension> {
  const AppDimensThemeExtension({
    required this.radiusSm,
    required this.radiusMd,
    required this.radiusLg,
    required this.radiusXl,
    required this.radiusFull,
    required this.spacingUnit,
    required this.containerMargin,
    required this.gutter,
    required this.stackSm,
    required this.stackMd,
    required this.stackLg,
    required this.stackXl,
  });

  static const AppDimensThemeExtension light = AppDimensThemeExtension(
    radiusSm: 4,
    radiusMd: 12,
    radiusLg: 16,
    radiusXl: 24,
    radiusFull: 9999,
    spacingUnit: 8,
    containerMargin: 24,
    gutter: 16,
    stackSm: 8,
    stackMd: 16,
    stackLg: 32,
    stackXl: 64,
  );

  final double radiusSm;
  final double radiusMd;
  final double radiusLg;
  final double radiusXl;
  final double radiusFull;
  final double spacingUnit;
  final double containerMargin;
  final double gutter;
  final double stackSm;
  final double stackMd;
  final double stackLg;
  final double stackXl;

  @override
  AppDimensThemeExtension copyWith({
    double? radiusSm,
    double? radiusMd,
    double? radiusLg,
    double? radiusXl,
    double? radiusFull,
    double? spacingUnit,
    double? containerMargin,
    double? gutter,
    double? stackSm,
    double? stackMd,
    double? stackLg,
    double? stackXl,
  }) {
    return AppDimensThemeExtension(
      radiusSm: radiusSm ?? this.radiusSm,
      radiusMd: radiusMd ?? this.radiusMd,
      radiusLg: radiusLg ?? this.radiusLg,
      radiusXl: radiusXl ?? this.radiusXl,
      radiusFull: radiusFull ?? this.radiusFull,
      spacingUnit: spacingUnit ?? this.spacingUnit,
      containerMargin: containerMargin ?? this.containerMargin,
      gutter: gutter ?? this.gutter,
      stackSm: stackSm ?? this.stackSm,
      stackMd: stackMd ?? this.stackMd,
      stackLg: stackLg ?? this.stackLg,
      stackXl: stackXl ?? this.stackXl,
    );
  }

  @override
  AppDimensThemeExtension lerp(
    ThemeExtension<AppDimensThemeExtension>? other,
    double t,
  ) {
    if (other is! AppDimensThemeExtension) return this;

    return AppDimensThemeExtension(
      radiusSm: lerpDouble(radiusSm, other.radiusSm, t)!,
      radiusMd: lerpDouble(radiusMd, other.radiusMd, t)!,
      radiusLg: lerpDouble(radiusLg, other.radiusLg, t)!,
      radiusXl: lerpDouble(radiusXl, other.radiusXl, t)!,
      radiusFull: lerpDouble(radiusFull, other.radiusFull, t)!,
      spacingUnit: lerpDouble(spacingUnit, other.spacingUnit, t)!,
      containerMargin: lerpDouble(containerMargin, other.containerMargin, t)!,
      gutter: lerpDouble(gutter, other.gutter, t)!,
      stackSm: lerpDouble(stackSm, other.stackSm, t)!,
      stackMd: lerpDouble(stackMd, other.stackMd, t)!,
      stackLg: lerpDouble(stackLg, other.stackLg, t)!,
      stackXl: lerpDouble(stackXl, other.stackXl, t)!,
    );
  }
}
