import 'package:flutter/material.dart';
import '../../theme.imports.dart';

class AText extends StatelessWidget {
  final IAppTextStyle? style;
  final String data;
  final Color? color;
  final TextAlign? align;
  final TextStyle? variation;

  AText.displaySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.displaySmall;

  AText.displayMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.displayMedium;

  AText.displayLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.displayLarge;

  AText.headingSmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.headingSmall;

  AText.headingMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.headingMedium;

  AText.headingLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.headingLarge;

  AText.bodyMedium(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.bodyMedium;

  AText.bodyLarge(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.bodyLarge;

  AText.bodySmall(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.bodySmall;

  AText.bodyMediumBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.bodyMediumBold;

  AText.labelRegularBold(
    this.data, {
    super.key,
    this.color,
    this.variation,
    this.align,
  }) : style = ThemeTextStyles.labelRegularBold;

  @override
  Widget build(BuildContext context) {
    TextStyle finalStyle = style!;

    if (color != null) finalStyle = style!.copyWith(color: color);

    return Text(
      data,
      style: finalStyle,
      textAlign: align,
    );
  }
}
