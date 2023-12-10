import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_site/design/design.dart';

class AppTheme {
  static lightTheme() {
    return _baseTheme.copyWith(
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      textTheme: _textTheme(Colors.black),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          surfaceTintColor: Colors.black,
          textStyle: _baseTheme.textTheme.titleSmall!,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2, color: AppColors.darkBlue3),
          foregroundColor: AppColors.darkBlue3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkBlue3,
          foregroundColor: AppColors.whiteColor,
          surfaceTintColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static darkTheme() {
    return _baseTheme.copyWith(
      scaffoldBackgroundColor: Colors.black87,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      textTheme: _textTheme(Colors.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          surfaceTintColor: Colors.white,
          textStyle: _baseTheme.textTheme.titleSmall!.copyWith(
            color: Colors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.lightBlue7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2, color: AppColors.whiteColor),
          foregroundColor: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  static final ThemeData _baseTheme = ThemeData(
    useMaterial3: true,
  );

  static TextTheme _textTheme(Color textColor) {
    final theme = GoogleFonts.montserratTextTheme();
    return TextTheme(
      displayLarge: theme.displayLarge!.copyWith(color: textColor),
      displayMedium: theme.displayMedium!.copyWith(color: textColor),
      displaySmall: theme.displaySmall!.copyWith(color: textColor),
      headlineLarge: theme.headlineLarge!.copyWith(color: textColor),
      headlineMedium: theme.headlineMedium!.copyWith(color: textColor),
      headlineSmall: theme.headlineSmall!.copyWith(color: textColor),
      titleLarge: theme.titleLarge!.copyWith(color: textColor),
      titleMedium: theme.titleMedium!.copyWith(color: textColor),
      titleSmall: theme.titleSmall!.copyWith(color: textColor),
      bodyLarge: theme.bodyLarge!.copyWith(color: textColor),
      bodyMedium: theme.bodyMedium!.copyWith(color: textColor),
      bodySmall: theme.bodySmall!.copyWith(color: textColor),
      labelLarge: theme.labelLarge!.copyWith(color: textColor),
      labelMedium: theme.labelMedium!.copyWith(color: textColor),
      labelSmall: theme.labelSmall!.copyWith(color: textColor),
    );
  }
}
