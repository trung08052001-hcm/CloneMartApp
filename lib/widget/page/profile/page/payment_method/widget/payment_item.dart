import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({
    super.key,
    required this.assets,
  });

  final SvgGenImage assets;

  @override
  Widget build(BuildContext context) {
    final double baseWidth = (screenWidth - kDefaultPadding * 2 - 4 * 15.w) / 5;

    return AppButton(
      onTap: () {},
      borderRadius: 50.r,
      backGroundColor: kGhostWhiteColor,
      height: baseWidth,
      width: baseWidth,
      child: assets.svg(height: 30.h),
    );
  }
}
