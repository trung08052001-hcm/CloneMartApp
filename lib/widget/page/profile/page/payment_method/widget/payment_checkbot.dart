import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/checkbox/custom_checkbox.dart';
import 'package:flutter/material.dart';

class PaymentCheckBox extends StatelessWidget {
  const PaymentCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CustomCheckbox(),
        SizedBox(
          height: 10.h,
        ),
        Text(
          'S().remember_me',
          style: fontApp.copyWith(
              fontSize: 14, fontWeight: medium, color: textBlackColor),
        ),
      ],
    );
  }
}
