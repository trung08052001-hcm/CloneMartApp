import 'package:clonemartapp/presentation/app/bloc/app_bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/bloc/forget_pass_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/bloc/otp_verification_bloc.dart';
import 'package:clonemartapp/widget/page/category/bloc/category_bloc.dart';
import 'package:clonemartapp/widget/page/channel/bloc/channel_bloc.dart';
import 'package:clonemartapp/widget/page/home/bloc/home_bloc.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/bloc/notification_bloc.dart';
import 'package:clonemartapp/widget/page/information/bloc/information_new_bloc.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_bloc.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:clonemartapp/widget/page/profile/bloc/profile_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/account/bloc/account_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/address/bloc/address_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/history/bloc/history_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/bloc/payment_method_bloc.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:get_it/get_it.dart';

class BlocDI {
  BlocDI._();

  static Future<void> init(GetIt injector) async {
    injector

      ///A
      ..registerLazySingleton<AppBloc>(AppBloc.new)
      ..registerLazySingleton<AuthBloc>(AuthBloc.new)
      ..registerLazySingleton<AccountBloc>(AccountBloc.new)
      ..registerLazySingleton<AddressBloc>(AddressBloc.new)

      ///B

      ///C
      ..registerFactory<ChannelBloc>(ChannelBloc.new)
      ..registerLazySingleton<CategoryBloc>(CategoryBloc.new)

      ///D

      ///F
      ..registerFactory<ForgetPasswordBloc>(ForgetPasswordBloc.new)

      ///H
      ..registerFactory<DeliveryHistoryBloc>(DeliveryHistoryBloc.new)
      ..registerFactory<HomeBloc>(HomeBloc.new)

      ///M
      ..registerLazySingleton<MainBloc>(MainBloc.new)

      ///N
      ..registerFactory<NotificationBloc>(NotificationBloc.new)

      ///L

      ///I
      ..registerFactory<InformationNewBloc>(InformationNewBloc.new)

      ///O
      ..registerLazySingleton<OnBoardingBloc>(OnBoardingBloc.new)
      ..registerFactory<OtpVerificationBloc>(OtpVerificationBloc.new)

      ///P
      ..registerLazySingleton<ProfileBloc>(ProfileBloc.new)
      ..registerLazySingleton<PaymentMethodBloc>(PaymentMethodBloc.new)

      ///R

      ///S
      ..registerLazySingleton<SplashScreenBloc>(SplashScreenBloc.new);
    //V
  }
}
