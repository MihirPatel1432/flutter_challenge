import 'package:flutter/material.dart';
import 'package:flutter_challenge/enum/font_type.dart';
import 'package:flutter_challenge/ui/common/color_assets.dart';

class ThemeResource {
  static var fontType = FontType.getFontFamilyType(FontFamilyType.opensans);

  ThemeMode? themeMode;

  //Light Theme
  final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: LightThemeColors.backgroundColor,
      brightness: Brightness.light,
      primaryColor: LightThemeColors.primaryColor,
      secondaryHeaderColor: LightThemeColors.secondaryColor,
      dividerColor: LightThemeColors.dividerColor,
      fontFamily: fontType,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: LightThemeColors.primaryColor,
        onSecondary: LightThemeColors.secondaryColor.withOpacity(0.80),
        onError: LightThemeColors.errorColor.withOpacity(0.80),
        onPrimary: LightThemeColors.primaryColor.withOpacity(0.80),
        background: LightThemeColors.backgroundColor,
        surface: LightThemeColors.successColor,
        secondary: LightThemeColors.textSubTitleColor,
        error: LightThemeColors.errorColor,
        onBackground: LightThemeColors.backgroundColor.withOpacity(0.80),
        onSurface: LightThemeColors.blackColor,
        primaryContainer: LightThemeColors.textPrimary,
        secondaryContainer: LightThemeColors.textSecondary,
        onTertiaryContainer: LightThemeColors.textDisabled,
        outline: LightThemeColors.borderColor,
      ),
      // border color
      buttonTheme: ButtonThemeData(
          buttonColor: LightThemeColors.secondaryColor,
          disabledColor: LightThemeColors.textPrimary,
          focusColor: LightThemeColors.secondaryColor),
      textTheme: TextTheme(
          labelLarge: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.bold),
              //BOLD
              color: LightThemeColors.textPrimary),
          labelMedium: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.heavy),
              //BLACK
              color: LightThemeColors.textPrimary),
          labelSmall: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.regular),
              //NORMAL
              color: LightThemeColors.textPrimary),
          bodyMedium: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.semiBold),
              //SEMI BOLD
              color: LightThemeColors.textPrimary),
          bodyLarge: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.medium),
              //MEDIUM
              color: LightThemeColors.textPrimary),
          titleSmall: TextStyle(
              fontWeight: FontType.getFontWeightType(FontWeightType.regular),
              //NORMAL
              color: LightThemeColors.textPrimary)),
      tabBarTheme: TabBarTheme(
        labelColor: LightThemeColors.textSecondary,
        unselectedLabelColor: LightThemeColors.primaryColor.withOpacity(0.5),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: LightThemeColors.primaryColor,
        ),
      ),
      sliderTheme: SliderThemeData(
          showValueIndicator: ShowValueIndicator.always,
          valueIndicatorColor: LightThemeColors.secondaryColor,
          valueIndicatorTextStyle:
              TextStyle(color: LightThemeColors.primaryColor)),
      datePickerTheme: DatePickerThemeData(
        headerForegroundColor: LightThemeColors.secondaryColor,
      ));

  //DarkTheme
  final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: DarkThemeColors.backgroundColor,
      brightness: Brightness.dark,
      primaryColor: DarkThemeColors.primaryColor,
      secondaryHeaderColor: DarkThemeColors.secondaryColor,
      dividerColor: DarkThemeColors.dividerColor,
      fontFamily: fontType,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: DarkThemeColors.primaryColor,
        onSecondary: DarkThemeColors.secondaryColor.withOpacity(0.80),
        onError: DarkThemeColors.errorColor.withOpacity(0.80),
        onPrimary: DarkThemeColors.primaryColor.withOpacity(0.80),
        background: DarkThemeColors.backgroundColor,
        surface: DarkThemeColors.backgroundColor,
        secondary: DarkThemeColors.secondaryColor,
        error: DarkThemeColors.errorColor,
        onBackground: DarkThemeColors.backgroundColor.withOpacity(0.80),
        onSurface: DarkThemeColors.backgroundColor.withOpacity(0.80),
        primaryContainer: DarkThemeColors.textPrimary,
        secondaryContainer: DarkThemeColors.textSecondary,
        onTertiaryContainer: DarkThemeColors.textDisabled,
        outline: DarkThemeColors.dividerColor,
      ),
      // border color
      buttonTheme: ButtonThemeData(
        buttonColor: DarkThemeColors.primaryColor,
        disabledColor: DarkThemeColors.textDisabled,
        focusColor: DarkThemeColors.secondaryColor,
      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(
          fontSize: 98.0,
          fontWeight: FontWeight.bold, //BOLD
          color: DarkThemeColors.textPrimary,
        ),
        labelMedium: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w500, //MEDIUM
          color: DarkThemeColors.textPrimary,
        ),
        labelSmall: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal, //NORMAL
          color: DarkThemeColors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w600, //SEMI BOLD
          color: DarkThemeColors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w500, //BOLD
          color: DarkThemeColors.textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.normal, //NORMAL
          color: DarkThemeColors.textPrimary,
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: LightThemeColors.textSecondary,
        unselectedLabelColor: LightThemeColors.primaryColor.withOpacity(0.5),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: LightThemeColors.primaryColor,
        ),
      ));
}
