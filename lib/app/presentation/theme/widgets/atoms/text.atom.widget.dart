import 'package:flutter/material.dart';
import '../../theme.imports.dart';

class AText extends StatelessWidget {
  final IAppTextStyle? style;
  final String data;
  final Color? color;
  final TextAlign? align;
  final TextStyle? variation;
  final double? lineHeight;
  final FontWeight? fontWeight;

  AText.displaySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.displaySmall;

  AText.displayMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.displayMedium;

  AText.displayLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.displayLarge;

  AText.headingSmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.headingSmall;

  AText.headingMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.headingMedium;

  AText.headingLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.headingLarge;

  AText.bodyMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.bodyMedium;

  AText.bodyLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.bodyLarge;

  AText.bodySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.bodySmall;

  AText.bodyMediumBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.bodyMediumBold;

  AText.labelRegularBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.labelRegularBold;

  AText.labelSmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
    this.fontWeight,
  }) : style = ThemeTextStyles.labelSmall;

  @override
  Widget build(BuildContext context) {
    TextStyle finalStyle = style!;

    if (color != null) finalStyle = style!.copyWith(color: color);
    if (lineHeight != null) finalStyle = finalStyle.copyWith(height: lineHeight);
    if (fontWeight != null) finalStyle = finalStyle.copyWith(fontWeight: fontWeight);

    return Text(
      data,
      style: finalStyle,
      textAlign: align,
    );
  }
}
