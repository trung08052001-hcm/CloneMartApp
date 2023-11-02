import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/bloc/otp_verification_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/page/otp_verification/widget/otp_widget.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:clonemartapp/widget/page/divider/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<OtpVerificationBloc>();

    return BlocBuilder<OtpVerificationBloc, OtpVerificationInitial>(
      bloc: bloc,
      builder: (BuildContext context, OtpVerificationInitial state) {
        return AppScaffold(
          isPaddingDefault: true,
          paddingCustom:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          appbar: const DefaultAppbar(
            title: 'OTP Verification',
            hasLeading: true,
            elevation: 1,
            color: kWhiteColor,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'We sent 4-digit verification code to your email',
                style: fontApp.copyWith(
                    fontSize: 18, fontWeight: semiBold, color: textDartColor),
              ),
              SizedBox(
                height: 30.h,
              ),
              const InfoSection(
                title: 'OTP',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    OtpWidget(),
                    OtpWidget(),
                    OtpWidget(),
                    OtpWidget(),
                  ],
                ),
              ),
              const Spacer(),
              AppButton.primary(
                onTap: () {},
                title: 'Confirm',
                height: 50.h,
                borderRadius: 20.r,
              ),
              SizedBox(
                height: 20.h,
              ),
              DividerWidget.vertical(width: screenWidth / 2),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'There is no verification code?',
                    style: fontApp.copyWith(fontSize: 14, color: textGreyColor),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  TextButtonApp(
                    title: 'Resend',
                    colorText: kBlueColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    onTap: () {},
                  )
                ],
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }
}
