import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class textThemeApp extends TextTheme {
  const textThemeApp._();
  static const textThemeApp instance = textThemeApp._();

  String? get fontFamily => GoogleFonts.manrope().fontFamily;

  @override
  TextStyle get displaLarge => GoogleFonts.manrope(
        fontSize: 36,
        letterSpacing: 0,
        fontWeight: FontWeight.w700,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get displayMedium => GoogleFonts.manrope(
        fontSize: 20,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w600,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get displaySmall => GoogleFonts.manrope(
        fontSize: 15,
        fontWeight: FontWeight.w500,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get headlineLarge => GoogleFonts.manrope(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get headlineMedium => GoogleFonts.manrope(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get headlineSmall => GoogleFonts.manrope(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get titleLarge => GoogleFonts.manrope(
        fontSize: 20,
        letterSpacing: 0.2,
        fontWeight: FontWeight.w600,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get titleMedium => GoogleFonts.manrope(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get titleSmall => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get bodyLarge => GoogleFonts.manrope(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get bodyMedium => GoogleFonts.manrope(
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get bodySmall => GoogleFonts.manrope(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get labelLarge => GoogleFonts.manrope(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get labelMedium => GoogleFonts.manrope(
        fontSize: 11,
        fontWeight: FontWeight.w400,
      ).apply(overflow: TextOverflow.ellipsis);

  @override
  TextStyle get labelSmall => GoogleFonts.manrope(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.2,
      ).apply(overflow: TextOverflow.ellipsis);
}
