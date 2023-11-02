import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

class PhoneSection extends StatelessWidget {
  const PhoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'We will send 4-digit verification code to your phone',
          style: fontApp.copyWith(
              fontSize: 18, fontWeight: semiBold, color: textDartColor),
        ),
        SizedBox(
          height: 30.h,
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
