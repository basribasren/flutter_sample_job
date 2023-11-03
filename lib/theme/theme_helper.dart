import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorScheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: colorScheme.onPrimaryContainer,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(0.53),
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.indigo70001,
          fontSize: 42.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 34.fSize,
          fontFamily: 'Circular Std',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 32.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 28.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 11.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 22.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onPrimary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF356899),
    primaryContainer: Color(0XFF111C27),
    secondaryContainer: Color(0X05000000),

    // Error colors
    errorContainer: Color(0XFFB2215A),
    onError: Color(0XFFEA4335),
    onErrorContainer: Color(0X9EFFFFFF),

    // On colors(text colors)
    onPrimary: Color(0X990C0C26),
    onPrimaryContainer: Color(0XFFAFB0B5),
    onSecondaryContainer: Color(0XFF1A334B),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);

  // Blue
  Color get blue50 => Color(0XFFEDF2FC);
  Color get blue5001 => Color(0XFFEAF1FF);
  Color get blue70019 => Color(0X191F60D6);
  Color get blueA200 => Color(0XFF5386E4);

  // BlueGray
  Color get blueGray100 => Color(0XFFC9CACE);
  Color get blueGray50 => Color(0XFFF1F1F2);
  Color get blueGray700 => Color(0XFF2C557D);
  Color get blueGray70001 => Color(0XFF2B557C);
  Color get blueGray900 => Color(0XFF263238);
  Color get blueGray90005 => Color(0X05363636);

  // DeepOrange
  Color get deepOrange50 => Color(0XFFFEE0E1);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEBE9F6);

  // Gray
  Color get gray100 => Color(0XFFF1F5FC);
  Color get gray10001 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray300 => Color(0XFFE4E4E6);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray40001 => Color(0XFFBDBEC2);
  Color get gray50 => Color(0XFFFAFAFD);
  Color get gray500 => Color(0XFF94969D);
  Color get gray5001 => Color(0XFFFAFAFA);
  Color get gray5002 => Color(0XFFF6F8FD);
  Color get gray600 => Color(0XFF7A7C84);
  Color get gray700 => Color(0XFF61636A);
  Color get gray800 => Color(0XFF494A4F);
  Color get gray900 => Color(0XFF162432);
  Color get gray90005 => Color(0X050C1526);

  // Green
  Color get green50 => Color(0XFFE7FCF2);
  Color get green600 => Color(0XFF34A853);

  // Indigo
  Color get indigo400 => Color(0XFF428BC1);
  Color get indigo50 => Color(0XFFDBE6F9);
  Color get indigo700 => Color(0XFF395185);
  Color get indigo70001 => Color(0XFF31608E);

  // LightBlue
  Color get lightBlue800 => Color(0XFF0066B3);

  // Orange
  Color get orange100 => Color(0XFFFEE0A8);
  Color get orange300 => Color(0XFFFFBB41);

  // Red
  Color get red300 => Color(0XFFFE6D73);
  Color get red50 => Color(0XFFFFEAF2);
  Color get red5001 => Color(0XFFFFEDED);
  Color get red700 => Color(0XFFDD2025);
  Color get red70001 => Color(0XFFDC312D);
  Color get red800 => Color(0XFFCC2229);
  Color get redA700 => Color(0XFFFB0F0F);
  Color get redA70001 => Color(0XFFE30000);

  // Teal
  Color get teal50 => Color(0XFFD9E5F1);
  Color get teal600 => Color(0XFF0E9D57);
  Color get teal900 => Color(0XFF04284A);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
