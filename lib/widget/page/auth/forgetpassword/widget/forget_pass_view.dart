import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/bloc/forget_pass_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/widget/email_sec.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/widget/phone_section.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:clonemartapp/widget/page/divider/divider_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app_bar.dart/default_app_bar.dart';

class ForgetPassowdView extends StatelessWidget {
  ForgetPassowdView({
    super.key,
    required this.isPhone,
    required this.bloc,
  });

  final bool isPhone;
  final ForgetPasswordBloc bloc;
  final NavigationService navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPaddingDefault: true,
      paddingCustom: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      appbar: DefaultAppbar(
        title: 'S().forgot_password',
        hasLeading: true,
        elevation: 1,
        color: kWhiteColor,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.h,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: isPhone ? const PhoneSection() : const EmailSection(),
          ),
          const Spacer(),
          AppButton.primary(
            onTap: () {
              navigationService.navigateTo(RouteConst.otpVerification);
            },
            title: isPhone ? 'S().send_to_phone' : 'S().send_to_email',
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
                'S().try_another_way',
                style: fontApp.copyWith(fontSize: 14, color: textGreyColor),
              ),
              SizedBox(
                width: 4.w,
              ),
              TextButtonApp(
                title: isPhone ? 'S().send_to_email' : 'S().send_to_phone',
                colorText: kBlueColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                onTap: () {
                  bloc.add(
                    ChangeForgetTypeEvent(
                      type: isPhone ? ForgetType.email : ForgetType.phone,
                    ),
                  );
                },
              )
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
