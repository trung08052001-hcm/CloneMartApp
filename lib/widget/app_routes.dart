import 'package:clonemartapp/commom/config/logger_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:flutter/material.dart';

class AppRoute {
  AppRoute.internal();

  static Route<dynamic>? getRoute(RouteSettings settings) {
    logi(message: 'ScreenName: ${settings.name}');
    Widget widget;
    try {
      widget = getIt<Widget>(
        instanceName: settings.name,
        param1: settings.arguments,
      );
    } catch (e) {
      return null;
    }
    return MaterialPageRoute<dynamic>(
        builder: (BuildContext ctx) => widget, settings: settings);
  }
}

class RouteConst {
  static const String main = '/main';
  static const String splash = '/splash';
  static const String onBoarding = '/on_boarding';
  static const String auth = '/auth';
  static const String message = '/main/message';
  static const String doctorList = 'main/doctor_list';
  static const String notification = 'main/notification';
  static const String payment = 'main/payment';
  static const String forgetPassowd = '/auth/forget_password';
  static const String otpVerification =
      '/auth/forget_password/otp_verification';
  static const String search = 'main/search';
  static const String appointmentDetail = 'main/appointment_detail';
}
