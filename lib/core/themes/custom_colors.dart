import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  final Color brandAccent;

  const CustomColors({required this.brandAccent});

  @override
  CustomColors copyWith({Color? brandAccent}) {
    return CustomColors(brandAccent: brandAccent ?? this.brandAccent);
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(brandAccent: Color.lerp(brandAccent, other.brandAccent, t)!);
  }
}
