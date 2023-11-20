import 'package:clonemartapp/data/category_detail/category_phone.dart';
import 'package:clonemartapp/data/phone_model/phone_models.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/favorite_button.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/phone_item.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/top_rate_phone.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:clonemartapp/widget/page/home/widget/phone_item_home.dart';
import 'package:clonemartapp/widget/page/home/widget/top_rate_phone_home.dart';
import 'package:flutter/material.dart';

class ListPhoneHome extends StatelessWidget {
  ListPhoneHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (screenHeight - kDefaultPadding * 12) / 2,
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (_, int index) => PhoneItemHome(
              phone: phones[index],
              icon: FavoriteButton(
                onTap: () {},
              )),
          separatorBuilder: (_, __) => SizedBox(
                height: 15.h,
              ),
          itemCount: 3),
    );
  }
}
