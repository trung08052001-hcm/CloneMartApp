import 'dart:math';

import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';

const int guidelineBaseWidth = 393;
const int guidelineBaseHeight = 788;

SizeConfig config = getIt<SizeConfig>();

double get screenWidth => config.size.width;

double get screenHeight => config.size.height;

double get statusBarHeight => config.mediaQuerySize.padding.top;

double get scaleWidth => screenWidth / guidelineBaseWidth;

double get scaleHeight => screenHeight / guidelineBaseHeight;

double get scaleText => min(scaleWidth, scaleHeight);

extension ScreenExtension on num {
  double get w => this * scaleWidth; // Width Scale
  double get h => this * scaleHeight; // Height Scale
  double get sp => this * 1.0; //this * scaleText; // Text Scale
  double get r => this * scaleText; // Radius Scale
  double get sh => this * screenHeight; // Height %
  double get wh => this * screenWidth; // Width %
}
