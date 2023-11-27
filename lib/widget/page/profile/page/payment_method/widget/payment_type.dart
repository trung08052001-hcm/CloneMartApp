import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/widget/payment_item.dart';
import 'package:flutter/material.dart';

class PaymentType extends StatelessWidget {
  PaymentType({
    super.key,
  });

  final List<SvgGenImage> paymentList = <SvgGenImage>[
    Assets.icons.iconPaypal,
    Assets.icons.iconVisa,
    Assets.icons.iconMastercard,
    Assets.icons.iconPaystack,
    Assets.icons.iconAdd,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (screenWidth - kDefaultPadding * 2 - 4 * 15.w) / 5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: paymentList.length,
        separatorBuilder: (_, __) => SizedBox(width: 15.w),
        itemBuilder: (BuildContext context, int index) {
          return PaymentItem(assets: paymentList[index]);
        },
      ),
    );
  }
}
