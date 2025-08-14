import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// App theme configuration class
class AppTheme {
  /// Private constructor to prevent instantiation
  AppTheme._();

  /// Primary brand colors
  static const Color primaryColor = Color(0xFFA3E7A7);
  static const Color primaryLightColor = Color(0xFFD6F7D8);
  static const Color primaryDarkColor = Color(0xFF87C88B);

  /// Secondary brand colors
  static const Color secondaryColor = Color(0xFF6E6262); // Orange
  static const Color secondaryLightColor = Color(0xFF807373);
  static const Color secondaryDarkColor = Color(0xFF584E4E);

  /// Accent colors
  static const Color accentColor = Color(0xFF00BCD4); // Cyan

  /// Semantic colors
  static const Color successColor = Color(0xFF4CAF50); // Green
  static const Color errorColor = Color(0xFFF44336); // Red
  static const Color warningColor = Color(0xFFFFEB3B); // Yellow
  static const Color infoColor = Color(0xFF2196F3); // Blue

  /// Neutral colors
  static const Color backgroundColor = Color(0xFFF7FFF8);
  static const Color surfaceColor = Colors.white;
  static const Color cardColor = Colors.white;

  /// Text colors
  static const Color textPrimaryColor = Color(0xFF6E6262);
  static const Color textSecondaryColor = Color(0xFF807373);
  static const Color textDisabledColor = Color(0xFFBDBDBD);

  static BorderRadius borderRadius = BorderRadius.circular(32);

  /// Light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      onPrimary: Colors.black,
      primaryContainer: primaryLightColor,
      onPrimaryContainer: Colors.black,
      secondary: secondaryColor,
      onSecondary: Colors.black,
      secondaryContainer: secondaryLightColor,
      onSecondaryContainer: Colors.black,
      tertiary: accentColor,
      onTertiary: Colors.white,
      surface: surfaceColor,
      onSurface: textPrimaryColor,
      error: errorColor,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: cardColor,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryDarkColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryDarkColor,
        side: const BorderSide(color: primaryColor),
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryDarkColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      floatingLabelStyle: TextStyle(color: secondaryColor),
      border: OutlineInputBorder(borderRadius: borderRadius),
      enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: Color(0xFFDDDDDD)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: errorColor),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        selectedBackgroundColor: secondaryLightColor.withValues(alpha: 0.5),
        selectedForegroundColor: secondaryDarkColor,
        foregroundColor: secondaryColor,
        backgroundColor: backgroundColor,
      ),
    ),
    textTheme: GoogleFonts.manropeTextTheme(
      const TextTheme(
        displayLarge: TextStyle(color: textPrimaryColor),
        displayMedium: TextStyle(color: textPrimaryColor),
        displaySmall: TextStyle(color: textPrimaryColor),
        headlineLarge: TextStyle(color: textPrimaryColor),
        headlineMedium: TextStyle(color: textPrimaryColor),
        headlineSmall: TextStyle(color: textPrimaryColor),
        titleLarge: TextStyle(color: textPrimaryColor),
        titleMedium: TextStyle(color: textPrimaryColor),
        titleSmall: TextStyle(color: textPrimaryColor),
        bodyLarge: TextStyle(color: textPrimaryColor),
        bodyMedium: TextStyle(color: textPrimaryColor),
        bodySmall: TextStyle(color: textSecondaryColor),
        labelLarge: TextStyle(color: textPrimaryColor),
        labelMedium: TextStyle(color: textPrimaryColor),
        labelSmall: TextStyle(color: textSecondaryColor),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFE0DDDD),
      selectedItemColor: primaryDarkColor,
      unselectedItemColor: textSecondaryColor,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );

  /// Dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: primaryColor,
      onPrimary: Colors.white,
      primaryContainer: primaryDarkColor,
      onPrimaryContainer: Colors.white,
      secondary: secondaryColor,
      onSecondary: Colors.black,
      secondaryContainer: secondaryDarkColor,
      onSecondaryContainer: Colors.white,
      tertiary: accentColor,
      onTertiary: Colors.white,
      surface: const Color(0xFF1E1E1E),
      onSurface: Colors.white,
      error: errorColor,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFF121212),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1E1E1E),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2C2C2C),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF444444)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: errorColor),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF1E1E1E),
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
  );
}
