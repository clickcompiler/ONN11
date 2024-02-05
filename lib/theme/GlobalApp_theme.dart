import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'const_color.dart';
import 'theme_text.dart';

@immutable
class AppTheme {
  AppTheme._();
  static final AppTheme instance = AppTheme._();

  static const TextTheme textTheme = textThemeApp.instance;

  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;

  final ThemeData _darkTheme = ThemeData.dark().copyWith(
    dialogTheme: DialogTheme(
      elevation: 0,
      backgroundColor: White01,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    textTheme: textTheme.apply(
      fontFamily: textThemeApp.instance.fontFamily,
      displayColor: Colors.white,
      bodyColor: Colors.white,
    ),
  );

  final ThemeData _lightTheme = ThemeData.light().copyWith(
    chipTheme: const ChipThemeData(
      backgroundColor: PrimaryGreen01,
      disabledColor: PrimaryGreen01,
      checkmarkColor: Colors.white,
      deleteIconColor: Colors.white,
    ),
    colorScheme: const ColorScheme(
      background: White01,
      brightness: Brightness.light,
      error: Red01,
      errorContainer: Red02,
      onBackground: White02,
      onError: Red01,
      primary: PrimaryGreen01,
      onPrimary: White01,
      secondary: PrimaryGreen01,
      onSecondary: Secondary03,
      surface: White01,
      onSurface: White02,
    ),
    dialogTheme: DialogTheme(
      elevation: 0,
      backgroundColor: White01,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    splashColor: PrimaryGreen01,
    disabledColor: White02,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(PrimaryGreen01),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      checkColor: MaterialStateProperty.all(Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
    ),
    hintColor: White02,
    indicatorColor: PrimaryGreen01,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(PrimaryGreen01),
      radius: const Radius.circular(10),
      thickness: MaterialStateProperty.all(5),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: PrimaryGreen01,
      selectionColor: PrimaryGreen01,
    ),
    dividerTheme: const DividerThemeData(color: Black01, thickness: 0.5),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
      fillColor: White01,
      filled: true,
      errorMaxLines: 3,
      labelStyle: textTheme.bodyLarge?.copyWith(color: Black01),
      prefixIconColor: Black01,
      suffixIconColor: Black01,
      hintStyle: textTheme.bodyLarge?.copyWith(color: const Color(0xff677294)),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      alignLabelWithHint: false,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Black01, width: 1),
        gapPadding: 10,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Black01, width: 1),
        gapPadding: 10,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Black01, width: 1),
        gapPadding: 10,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Grey01, width: 1),
        gapPadding: 10,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Red01, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: const BorderSide(color: Red01, width: 1),
        gapPadding: 10,
      ),
      helperMaxLines: 3,
    ),
    expansionTileTheme: const ExpansionTileThemeData(
      collapsedBackgroundColor: PrimaryGreen01,
      backgroundColor: PrimaryGreen01,
      textColor: Black01,
      collapsedTextColor: Black01,
      tilePadding: EdgeInsets.symmetric(horizontal: 26, vertical: 22),
      iconColor: Black01,
      collapsedIconColor: Black01,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(0, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    ),
    iconTheme: const IconThemeData(color: White01),
    textTheme: textTheme.apply(
      fontFamily: textThemeApp.instance.fontFamily,
      displayColor: White02,
      bodyColor: Black01,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(PrimaryGreen01),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Black01,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: textTheme.displayLarge?.copyWith(color: Black01),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: White01,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
    ),
    scaffoldBackgroundColor: White01,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: PrimaryGreen01,
      circularTrackColor: PrimaryGreen01,
    ),
    brightness: Brightness.light,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
