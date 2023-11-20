import 'package:clonemartapp/data/phone_model/consultants_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/button/favorite_button.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/phone_item.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/top_rate_phone.dart';
import 'package:flutter/material.dart';

class AvailablePhone extends StatelessWidget {
  const AvailablePhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, int index) => PhoneItem(
            phone: consultants[index],
            icon: FavoriteButton(
              onTap: () {},
            )),
        separatorBuilder: (_, __) => SizedBox(
              height: 15.h,
            ),
        itemCount: 3);
  }
}
