import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/firestore_service.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_event.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/app_divider.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/login_sec.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/login_three_icon.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/sign_up_sec.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:clonemartapp/services/auth_service.dart';

class AuthView extends StatelessWidget {
  AuthView({
    super.key,
    required this.isLogin,
    required this.bloc,
  });

  final bool isLogin;
  final AuthBloc bloc;
  final AuthService _authService = AuthService();
  final NavigationService _navigationService = getIt<NavigationService>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final FirestoreService _firestoreService = FirestoreService();
  Future<void> _handleSignIn(String email, String password) async {
    try {
      User? user =
          await _authService.signInWithEmailAndPassword(email, password);
      if (user != null) {
        _navigationService.navigateTo(RouteConst.main);
      } else {}
    } catch (e) {
      print('Error signing in: $e');
    }
  }

  Future<void> _handleSignUp(String email, String password) async {
    try {
      User? user =
          await _authService.signUpWithEmailAndPassword(email, password);
      if (user != null) {
        print('User created successfully: ${user.uid}');

        // save data firestore
        await _firestoreService.saveUserData(
          fullName: fullNameController.text,
          email: emailController.text,
          phone: phoneController.text,
        );
        _navigationService.navigateTo(RouteConst.main);
      } else {
        print('User creation failed.');
      }
    } catch (e) {
      print('Error signing up: $e');
    }
  }

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
            child: isLogin
                ? LoginSection(
                    emailController: emailController,
                    passwordController: passwordController)
                : SignUpSection(
                    fullNameController: fullNameController,
                    passwordController: passwordController,
                    emailController: emailController,
                    phoneController: phoneController,
                  ),
          ),
          const Spacer(),
          AppButton.primary(
            onTap: () async {
              if (isLogin) {
                // Đăng nhập
                await _handleSignIn(
                    emailController.text, passwordController.text);
              } else {
                // Đăng ký
                await _handleSignUp(
                    emailController.text, passwordController.text);
              }
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
