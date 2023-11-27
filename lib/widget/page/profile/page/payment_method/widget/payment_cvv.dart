import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

class PaymentCvv extends StatelessWidget {
  const PaymentCvv({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: InfoSection(
            title: 'S().expiry_date',
            child: AppTextField(
              borderRadius: 10.r,
              filledColor: kGhostWhiteColor,
              hintText: 'eraj ali',
              isPhone: true,
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 2,
          child: InfoSection(
            title: 'S().cvv',
            child: AppTextField(
              borderRadius: 10.r,
              filledColor: kGhostWhiteColor,
              hintText: 'eraj ali',
              isPhone: true,
            ),
          ),
        ),
      ],
    );
  }
}
