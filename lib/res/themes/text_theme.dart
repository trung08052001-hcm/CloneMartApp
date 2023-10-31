import 'package:flutter/material.dart';

import '../color_core.dart';
import 'app_theme_data.dart';

const TextStyle fontApp = TextStyle(fontWeight: FontWeight.w500);
//New
// TextWeight
const FontWeight thin = FontWeight.w300;

const FontWeight regular = FontWeight.w400;

const FontWeight medium = FontWeight.w500;

const FontWeight semiBold = FontWeight.w600;

const FontWeight bold = FontWeight.w700;

const FontWeight extraBold = FontWeight.w800;

const FontWeight heavy = FontWeight.w900;

//Color
final Color textBlackColor = getColorTheme(kBlackColor, kWhiteColor);

final Color textDartColor = getColorTheme(kBlack3dDColor, kBlack3dDColor);

final Color textRedColor = getColorTheme(kRedColor, kRedColor);
final Color textOrangeColor = getColorTheme(kOrangeColor, kOrangeColor);
final Color textWhiteColor = getColorTheme(kWhiteColor, kWhiteColor);
final Color textBrownColor = getColorTheme(kBrownColor, kBrownColor);
final Color textBlueColor = getColorTheme(kBlueColor, kBlueColor);
final Color textGreenColor = getColorTheme(kGreenColor, kGreenColor);
final Color textGreyColor = getColorTheme(kGreyColor, kGreyColor);
final Color textGrey2Color = getColorTheme(kGreyColor, kGreyColor);
final Color textErrorColor = getColor().error;

TextTheme createTextTheme() => const TextTheme(
      titleMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
      titleSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      bodySmall: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
      bodyLarge: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      bodyMedium: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      titleLarge: TextStyle(fontWeight: FontWeight.normal, fontSize: 22),
      headlineSmall: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      displaySmall: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
      displayMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
      displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
    );

TextTheme createPrimaryTextTheme() =>
    createTextTheme().apply(bodyColor: kWhiteColor);

TextTheme createAccentTextTheme() =>
    createTextTheme().apply(bodyColor: kWhiteColor);

TextTheme textTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

TextTheme primaryTextTheme(BuildContext context) {
  return Theme.of(context).primaryTextTheme;
}
