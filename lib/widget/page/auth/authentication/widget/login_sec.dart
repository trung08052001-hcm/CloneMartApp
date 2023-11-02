import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';

import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

class LoginSection extends StatelessWidget {
  LoginSection({
    super.key,
  });
  final NavigationService navigationService = getIt<NavigationService>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'S().sign_in_by_enter',
          style: fontApp.copyWith(
              fontSize: 18, fontWeight: semiBold, color: textDartColor),
        ),
        SizedBox(
          height: 30.h,
        ),
        InfoSection(
          title: 'Email',
          child: AppTextField(
            prefixIcon: Assets.icons.iconEmail.svg(),
            hintText: 'S().enter_email',
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        InfoSection(
          title: 'S().password',
          child: AppTextField(
            prefixIcon: Assets.icons.iconLock.svg(),
            hintText: 'S().enter_password',
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButtonApp(
            title: 'S().forgot_password',
            onTap: () {
              navigationService.navigateTo(RouteConst.forgetPassowd);
            },
          ),
        ),
      ],
    );
  }
}
