import 'package:clonemartapp/data/information/information_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/button/favorite_button.dart';
import 'package:clonemartapp/widget/page/information/widget/information_item.dart';
import 'package:flutter/material.dart';

class AvailableInfor extends StatelessWidget {
  const AvailableInfor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, int index) => InformationItem(
            infor: informodel[index],
            icon: FavoriteButton(
              onTap: () {},
            )),
        separatorBuilder: (_, __) => SizedBox(
              height: 15.h,
            ),
        itemCount: 3);
  }
}
