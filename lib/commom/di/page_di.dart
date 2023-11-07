import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/auth/authentication/auth_page.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/forget_pass_page.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/otp_verification_page.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/notification_model.dart';
import 'package:clonemartapp/widget/page/main/main_page.dart';
import 'package:clonemartapp/widget/page/on_boarding/on_boarding_page.dart';
import 'package:clonemartapp/widget/page/profile/profile_page.dart';
import 'package:clonemartapp/widget/page/splash_screen/splash_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class PageDI {
  PageDI._();

  static Future<void> init(GetIt injector) async {
    injector
      //A
      ..registerFactory<Widget>(AuthPage.new, instanceName: RouteConst.auth)
      //C

      //D

      //F
      ..registerFactory<Widget>(ForgetPasswordPage.new,
          instanceName: RouteConst.forgetPassowd)
      //L

      //M
      ..registerFactory<Widget>(MainPage.new, instanceName: RouteConst.main)
      //N

      ..registerFactory<Widget>(NotificationPage.new,
          instanceName: RouteConst.notification)
      //P
      // ..registerFactory<Widget>(ProfilePage.new, instanceName: RouteConst.main)
      //O
      ..registerFactory<Widget>(OnBoardingPage.new,
          instanceName: RouteConst.onBoarding)
      ..registerFactory<Widget>(OtpVerificationPage.new,
          instanceName: RouteConst.otpVerification)
      //S
      ..registerFactory<Widget>(SplashScreenPage.new,
          instanceName: RouteConst.splash);
    // ..registerFactory<Widget>(SearchResultPage.new,
    //     instanceName: RouteConst.search);

    //V

    //R
  }
}
