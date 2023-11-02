import 'package:clonemartapp/presentation/app/bloc/app_bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/bloc/forget_pass_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/bloc/otp_verification_bloc.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_bloc.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector

      ///A
      ..registerLazySingleton<AppBloc>(AppBloc.new)
      ..registerLazySingleton<AuthBloc>(AuthBloc.new)

      ///B

      ///C

      ///D

      ///F
      ..registerFactory<ForgetPasswordBloc>(ForgetPasswordBloc.new)

      ///H

      ///M
      ..registerLazySingleton<MainBloc>(MainBloc.new)

      ///N

      ///L

      ///O
      ..registerLazySingleton<OnBoardingBloc>(OnBoardingBloc.new)
      ..registerFactory<OtpVerificationBloc>(OtpVerificationBloc.new)

      ///P

      ///R

      ///S
      ..registerLazySingleton<SplashScreenBloc>(SplashScreenBloc.new);
    //V
  }
}
