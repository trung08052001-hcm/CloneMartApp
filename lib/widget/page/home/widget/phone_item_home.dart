import 'package:clonemartapp/data/phone_model/consultants_model.dart';
import 'package:clonemartapp/data/phone_model/phone_models.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/phone_infor.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:clonemartapp/widget/page/home/widget/phone_information_home.dart';
import 'package:flutter/material.dart';

class PhoneItemHome extends StatelessWidget {
  const PhoneItemHome({
    Key? key,
    required this.phone,
    required this.icon,
  }) : super(key: key);

  final PhoneModels phone;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: screenWidth,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        color: kGhostWhiteColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(children: <Widget>[
        NetWorkImageWidget(
          height: double.infinity,
          width: 80.w,
          url: phone.avatar,
        ),
        SizedBox(
          width: 23.w,
        ),
        SizedBox(
          height: 120.h,
          width: 133,
          child: PhoneInforHome(
            phone: phone,
            icon: icon,
          ),
        ),
      ]),
    );
  }
}
