import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/services/auth_service.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';

import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginThreeIcon extends StatelessWidget {
  LoginThreeIcon({
    super.key,
  });
  final AuthService authService = AuthService();
  final List<Login3rdType> types = <Login3rdType>[
    Login3rdType.facebook,
    Login3rdType.google,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => AppButton(
                onTap: () {
                  if (types[index] == Login3rdType.google) {
                    authService.loginWithGoogle();
                  } else if (types[index] == Login3rdType.facebook) {
                    authService.loginWithFacebook(context);
                  } else {
                    print('Login with ${types[index].toString()}');
                  }
                },
                padding: EdgeInsets.all(5.w),
                child: types[index].svgGenImage.svg(height: 45.h),
              ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 15.w,
              ),
          itemCount: types.length),
    );
  }
}
