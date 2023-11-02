import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_event.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/app_divider.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/auth_enum.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/login_sec.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/login_three_icon.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/sign_up_sec.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    super.key,
    required this.isLogin,
    required this.bloc,
  });

  final bool isLogin;
  final AuthBloc bloc;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPaddingDefault: true,
      paddingCustom: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      appbar: DefaultAppbar(
        title: isLogin ? "S().welcome" : "S().create_new_account",
        hasLeading: false,
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
            child: isLogin ? LoginSection() : const SignUpSection(),
          ),
          const Spacer(),
          AppButton.primary(
            onTap: () {
              getIt<NavigationService>().navigateTo(RouteConst.main);
            },
            title: isLogin ? "S().sign_in" : "S().sign_up",
            height: 50.h,
            borderRadius: 20.r,
          ),
          SizedBox(
            height: 20.h,
          ),
          AppDivider.vertical(width: screenWidth / 2),
          SizedBox(
            height: 20.h,
          ),
          LoginThreeIcon(),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                isLogin ? 'S().dont_have_account' : 'S().already_have_account',
                style: fontApp.copyWith(fontSize: 14, color: textGreyColor),
              ),
              SizedBox(
                width: 4.w,
              ),
              TextButtonApp(
                title: isLogin ? 'S().sign_up' : 'S().sign_in',
                colorText: kBlackColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                onTap: () {
                  bloc.add(ChangeAuthTypeEvent(
                      type: isLogin ? AuthType.signUp : AuthType.login));
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
