import 'package:clonemartapp/data/phone_model/phone_models.dart';

import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';

import 'package:clonemartapp/widget/page/button/favorite_button.dart';

import 'package:clonemartapp/widget/page/home/widget/phone_item_home.dart';

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
