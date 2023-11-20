import 'package:clonemartapp/data/phone_model/phone_models.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class TopPhoneItemHome extends StatelessWidget {
  const TopPhoneItemHome({
    Key? key,
    required this.phone,
  }) : super(key: key);

  final PhoneModels phone;

  @override
  Widget build(BuildContext context) {
    final double baseWidth = 110.w;
    return AppButton(
      onTap: () {},
      width: baseWidth,
      height: 170.h + 25.w,
      backGroundColor: kGhostWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NetWorkImageWidget(
            url: phone.avatar,
            borderRadius: 10.r,
            height: 120.h,
            width: baseWidth,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  phone.name,
                  style: fontApp.copyWith(
                      fontSize: 13,
                      fontWeight: semiBold,
                      color: textBlackColor),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  phone.specialty,
                  style: fontApp.copyWith(fontSize: 10),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    AppButton.primary(
                      onTap: () {},
                      width: baseWidth - 10.w - 15.w - 25.w,
                      height: 25.w,
                      title: 'S().book',
                      textFontSize: 11,
                    ),
                    AppButton.primary(
                      onTap: () {},
                      width: 25.w,
                      height: 25.w,
                      child: Assets.icons.message
                          .svg(width: 15.w, color: kWhiteColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
