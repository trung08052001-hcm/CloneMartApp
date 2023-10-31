import 'package:clonemartapp/presentation/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';

import '../../commom/di/app_injector.dart';
import '../color_core.dart';

AppBloc appBloc = getIt<AppBloc>();
ThemeData currentAppTheme = appBloc.state.theme;
ColorScheme getColor() => currentAppTheme.colorScheme;

class AppThemeData {
  AppThemeData.internal();

  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: kDefaultBackgroundColor,
      // 0xFFF6F3F0
      appBarTheme: const AppBarTheme(
        backgroundColor: kDefaultAppBarBackgroundColor,
        foregroundColor: Colors.white,
      ),
      // 0xFFAA2B2F

      bottomAppBarTheme:
          const BottomAppBarTheme(color: kDefaultBottomAppBarColor),
      // 0xFFAA2B,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: kDefaultInputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFADABAB)),
        ),
      ),
      // fontFamily: FontFamily.mulish,
      // textTheme: createTextTheme(),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: kDarkModeBackgroundColor,
      // 0xFFF6F3F0
      appBarTheme: const AppBarTheme(
        backgroundColor: kDarkModeAppBarBackgroundColor,
        foregroundColor: Colors.white,
      ),
      // 0xFFAA2B2F

      bottomAppBarTheme:
          const BottomAppBarTheme(color: kDarkModeBottomAppBarColor),
      // 0xFFAA2B,

      inputDecorationTheme: InputDecorationTheme(
        fillColor: kDarkModeInputColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Color(0xFFADABAB)),
        ),
      ),
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      dividerColor: Colors.black12,
      // textTheme: createTextTheme(),
      // fontFamily: FontFamily.mulish,
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }),
    );
  }
}

Color getColorTheme(Color colorThemeWhite, Color colorThemeDark) {
  // if (currentAppTheme == AppThemeData.darkTheme) {
  //   return colorThemeDark;
  // }
  return colorThemeWhite;
}

extension MyColorScheme on ColorScheme {
  //*************START TEXT COLOR*************
  //Màu của chữ trong toàn bộ ứng dụng

  Color get textThemeBlackColor => getColorTheme(kBlackColor, kWhiteColor);

  Color get textThemeWhiteColor => getColorTheme(kWhiteColor, kBlackColor);

  Color get textThemePrimaryColor =>
      getColorTheme(themePrimaryColor, themePrimaryColor);

  Color get textThemeDartColor => getColorTheme(kBlack3dDColor, kBlack3dDColor);

  Color get textSecondaryColor => getColorTheme(kOrangeColor, kOrangeColor);

  Color get textThemeBlack99Color =>
      getColorTheme(kBlack99Color, kBlack99Color);

  Color get textThemeRedColor => getColorTheme(kRedColor, kRedColor);

  Color get textThemeOrangeColor => getColorTheme(kOrangeColor, kOrangeColor);

  //*************COMPONENT COLOR*************
  //Màu của các button,checkbox.....

  Color get themePrimaryColor => getColorTheme(kWhiteColor, kBlackColor);

  Color get themeWhiteColor => getColorTheme(kWhiteColor, kBlack3dDColor);

  Color get themeBlackColor => getColorTheme(kBlackColor, kBlackColor);

  Color get themeBrownColor => getColorTheme(kBrownColor, kBrownColor);

  Color get themeBlueColor => getColorTheme(kBlueColor, kBlueColor);

  Color get themeGreenColor => getColorTheme(kGreenColor, kGreenColor);

  Color get themeGrayColor => getColorTheme(kGreyColor, kGreyColor);

  Color get themeGray2Color => getColorTheme(kGreyColor, kGreyColor);

  Color get colorPrimaryWhite => getColorTheme(kShadowColor, kWhiteColor);

  Color get themeShadowColor => getColorTheme(kShadowColor, kShadowColor);

  Color get colorShimmer => getColorTheme(Colors.white24, Colors.white24);

  //*************BACKGROUND COLOR*************
  //Màu của tất cả các background

  Color get backgroundWhitekBlack => getColorTheme(kWhiteColor, kBlackColor);
  Color get backgroundWhitedkBlack99 =>
      getColorTheme(kWhiteColor, kBlack99Color);

  Color get blackInWhite => getColorTheme(kBlack99Color, kWhiteColor);
}
