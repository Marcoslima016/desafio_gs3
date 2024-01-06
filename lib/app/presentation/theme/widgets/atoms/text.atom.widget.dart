import 'package:flutter/material.dart';
import '../../theme.imports.dart';

class AText extends StatelessWidget {
  final IAppTextStyle? style;
  final String data;
  final Color? color;
  final TextAlign? align;
  final TextStyle? variation;
  final double? lineHeight;

  AText.displaySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.displaySmall;

  AText.displayMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.displayMedium;

  AText.displayLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.displayLarge;

  AText.headingSmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.headingSmall;

  AText.headingMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.headingMedium;

  AText.headingLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.headingLarge;

  AText.bodyMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.bodyMedium;

  AText.bodyLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.bodyLarge;

  AText.bodySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.bodySmall;

  AText.bodyMediumBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.bodyMediumBold;

  AText.labelRegularBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.labelRegularBold;

  AText.labelSmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
    this.lineHeight,
  }) : style = ThemeTextStyles.labelSmall;

  @override
  Widget build(BuildContext context) {
    TextStyle finalStyle = style!;

    if (color != null) finalStyle = style!.copyWith(color: color);
    if (lineHeight != null) finalStyle = style!.copyWith(height: lineHeight);

    return Text(
      data,
      style: finalStyle,
      textAlign: align,
    );
  }
}
