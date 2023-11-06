import 'package:clonemartapp/data/phone_model/phone_model.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/home/widget/info_phone_erea_list.dart';
import 'package:flutter/material.dart';

class PhoneListViewItem extends StatelessWidget {
  const PhoneListViewItem({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final PhoneModel phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260.w,
      padding: EdgeInsets.only(left: 15.w, top: 16.h, right: 8.w),
      margin: EdgeInsets.only(bottom: 5.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: kTealColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: kBlackColor.withOpacity(.2),
                blurRadius: 1,
                offset: Offset(0.w, 5.h))
          ]),
      child: PhoneInfo(phone: phone),
    );
  }
}
