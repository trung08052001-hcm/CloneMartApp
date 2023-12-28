import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class SignUpSection extends StatelessWidget {
  final TextEditingController fullNameController;
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  SignUpSection({
    super.key,
    required this.fullNameController,
    required this.passwordController,
    required this.emailController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InfoSection(
          title: 'S().fullName',
          child: AppTextField(
            controller: fullNameController,
            prefixIcon: Assets.icons.iconUser.svg(),
            hintText: 'S().enter_full_name',
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        InfoSection(
          title: 'S().password',
          child: AppTextField(
            controller: passwordController,
            prefixIcon: Assets.icons.iconLock.svg(),
            hintText: 'S().enter_password',
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        InfoSection(
          title: 'Email',
          child: AppTextField(
            controller: emailController,
            prefixIcon: Assets.icons.iconEmail.svg(),
            hintText: 'S().enter_mail',
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        InfoSection(
          title: 'S().phone',
          child: AppTextField(
            controller: phoneController,
            prefixIcon: Assets.icons.iconPhone.svg(),
            hintText: 'S().enter_phone',
            isPhone: true,
          ),
        ),
      ],
    );
  }
}
