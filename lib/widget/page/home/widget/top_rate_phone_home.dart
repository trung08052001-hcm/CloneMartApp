import 'package:clonemartapp/data/phone_model/phone_models.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/top_rate_phone_item.dart';
import 'package:clonemartapp/widget/page/home/widget/top_phone_item_home.dart';
import 'package:flutter/material.dart';

class TopRatePhoneHome extends StatelessWidget {
  const TopRatePhoneHome({
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
          itemBuilder: (_, int index) => TopPhoneItemHome(
                phone: phones[index],
              ),
          separatorBuilder: (_, __) => SizedBox(
                width: 10.w,
              ),
          itemCount: phones.length),
    );
  }
}
