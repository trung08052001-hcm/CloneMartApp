import 'package:clonemartapp/data/consultants/consultants_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/top_rate_phone_item.dart';
import 'package:flutter/material.dart';

class TopRatePhone extends StatelessWidget {
  const TopRatePhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h + 25.w,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: kDefaultPadding),
          itemBuilder: (_, int index) => TopPhoneItem(
                phone: consultants[index],
              ),
          separatorBuilder: (_, __) => SizedBox(
                width: 10.w,
              ),
          itemCount: consultants.length),
    );
  }
}
