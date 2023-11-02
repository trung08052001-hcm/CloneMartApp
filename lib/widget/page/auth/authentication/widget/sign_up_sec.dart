import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class SignUpSection extends StatelessWidget {
  const SignUpSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InfoSection(
          title: 'S().fullName',
          child: AppTextField(
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
            prefixIcon: Assets.icons.iconPhone.svg(),
            hintText: 'S().enter_phone',
            isPhone: true,
          ),
        ),
      ],
    );
  }
}
