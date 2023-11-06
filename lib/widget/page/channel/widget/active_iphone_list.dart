import 'package:clonemartapp/data/channel_model/channel_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/channel/widget/active_iphone_item.dart';
import 'package:flutter/material.dart';

class ListActiveDoctor extends StatelessWidget {
  const ListActiveDoctor({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.w,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: kDefaultPadding),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => SizedBox(
          width: 15.w,
        ),
        itemCount: channels.length,
        itemBuilder: (_, int index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: ActiveIphoneItem(
            channel: channels[index],
          ),
        ),
      ),
    );
  }
}
