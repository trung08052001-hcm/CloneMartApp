import 'package:clonemartapp/data/information/information_model.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:clonemartapp/widget/page/information/widget/information_contract.dart';
import 'package:flutter/material.dart';

class InformationItem extends StatelessWidget {
  const InformationItem({
    Key? key,
    required this.infor,
    required this.icon,
  }) : super(key: key);

  final InforModels infor;
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
          url: infor.avatar,
        ),
        SizedBox(
          width: 23.w,
        ),
        SizedBox(
          height: 120.h,
          width: 133,
          child: InforContract(
            phone: infor,
            icon: icon,
          ),
        ),
      ]),
    );
  }
}
