import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class CustomNotificationFollow extends StatefulWidget {
  const CustomNotificationFollow({super.key});

  @override
  State<CustomNotificationFollow> createState() =>
      _CustomNotificationFollowState();
}

class _CustomNotificationFollowState extends State<CustomNotificationFollow> {
  bool follow = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NetWorkImageWidget(
          url:
              'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/327764172_886402092507227_5214911061825876344_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=RHKBwIl5uOgAX_o6XTm&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfCt_E8tJX0vAicD5iuyVavygp7syb5_uPhnOmL8wYExGg&oe=658D2C52',
          width: 50.h,
          height: 50.h,
          borderRadius: 25.r,
          boxBorder: Border.all(color: kWhiteColor, width: 5.w),
        ),
        SizedBox(
          width: 15.w,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Huks Mask",
              style: fontApp.copyWith(
                  fontSize: 14, fontWeight: medium, color: textBlackColor),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              "New Following ",
              style: fontApp.copyWith(
                  fontSize: 14, fontWeight: medium, color: textGreyColor),
            ),
          ],
        ),
        const Spacer(),
        AppButton(
          onTap: () {
            setState(() {
              follow = !follow;
            });
          },
          height: 50.h,
          width: 100.w,
          backGroundColor: kBlueColor,
          textColor: kWhiteColor,
          title: 'Follow',
          style: fontApp.copyWith(
              fontSize: 14, color: textWhiteColor, fontWeight: bold),
          borderRadius: 30.r,
        ),
      ],
    );
  }
}
