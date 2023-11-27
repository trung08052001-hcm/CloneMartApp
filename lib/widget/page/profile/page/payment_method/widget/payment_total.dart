import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';

class PaymentTotal extends StatelessWidget {
  const PaymentTotal({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle styleText = fontApp.copyWith(
        fontSize: 14, fontWeight: medium, color: textGreyColor);
    return Row(
      children: <Widget>[
        Text(
          'Total',
          style: styleText,
        ),
        const Spacer(),
        Text(
          '\$45.00',
          style: styleText,
        ),
      ],
    );
  }
}
