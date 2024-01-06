import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTextStyles {
  const ThemeTextStyles();

  static final TextStyle _parent = GoogleFonts.mulish();

  //----------------------------------------- DISPLAY -----------------------------------------

  static IAppTextStyle displayLarge = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 25,
      fontWeight: FontWeight.w900,
      color: Colors.grey[50],
    ),
  );

  static IAppTextStyle displayMedium = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 23,
      fontWeight: FontWeight.w800,
      color: Colors.grey[50],
    ),
  );

  static IAppTextStyle displaySmall = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: Colors.grey[50],
    ),
  );

  //------------------------------------------ HEADING ------------------------------------------

  static IAppTextStyle headingLarge = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.grey[50],
    ),
  );

  static IAppTextStyle headingMedium = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w900,
      color: Colors.grey[50],
    ),
  );

  static IAppTextStyle headingSmall = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.grey[50],
    ),
  );

  //-------------------------------------------- BODY --------------------------------------------

  static IAppTextStyle bodyLarge = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      // height: 1.18,
      color: Colors.white,
    ),
  );

  // ** EM USO
  static IAppTextStyle bodyMedium = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.71,
      color: Colors.white,
    ),
  );

  static IAppTextStyle bodySmall = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      // height: 1.18,
      color: Colors.grey[600],
    ),
  );

  static IAppTextStyle bodyMediumBold = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w800,
      height: 1.18,
      color: Colors.grey[200],
    ),
  );

  //-------------------------------------------- LABEL --------------------------------------------

// ** EM USO
  static IAppTextStyle labelSmall = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: Color(0xffFFFFFF),
    ),
  );

  // ** EM USO
  static IAppTextStyle labelRegularBold = IAppTextStyle.style(
    _parent.copyWith(
      fontSize: 9,
      fontWeight: FontWeight.w700,
      height: 1.222,
      color: Colors.grey[600],
    ),
  );
}

class IAppTextStyle extends TextStyle {
  IAppTextStyle.style(TextStyle style)
      : super(
          inherit: style.inherit,
          color: style.color,
          backgroundColor: style.backgroundColor,
          fontSize: style.fontSize,
          fontWeight: style.fontWeight,
          fontStyle: style.fontStyle,
          letterSpacing: style.letterSpacing,
          wordSpacing: style.wordSpacing,
          textBaseline: style.textBaseline,
          height: style.height,
          leadingDistribution: style.leadingDistribution,
          locale: style.locale,
          foreground: style.foreground,
          background: style.background,
          shadows: style.shadows,
          fontFeatures: style.fontFeatures,
          decoration: style.decoration,
          decorationColor: style.decorationColor,
          decorationStyle: style.decorationStyle,
          decorationThickness: style.decorationThickness,
          debugLabel: style.debugLabel,
          fontFamily: style.fontFamily,
          fontFamilyFallback: style.fontFamilyFallback,
          overflow: style.overflow,
        );

  @override
  double get fontSize {
    double sizeAdjustedToScreen = super.fontSize!.sp;
    return sizeAdjustedToScreen;
  }
}
