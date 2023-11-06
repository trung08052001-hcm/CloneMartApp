import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: () {
        // getIt<NavigationService>().navigateTo(RouteConst.account);
      },
      width: screenWidth,
      padding: EdgeInsets.symmetric(vertical: 40.h),
      backGroundColor: kBlueColor,
      borderRadiusGeometry:
          BorderRadius.vertical(bottom: Radius.circular(30.r)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15.h,
          ),
          NetWorkImageWidget(
            url:
                'https://scontent.fsgn8-4.fna.fbcdn.net/v/t1.6435-9/123806964_2684711161781513_4760063319611442908_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=7f8c78&_nc_ohc=lv8AlEDm2qkAX_x187L&_nc_ht=scontent.fsgn8-4.fna&oh=00_AfCVMr1ufnAPAxEPlkyHs9Ofpn7nbsvux6ahAskbpnbb6g&oe=656C6364',
            width: 100.h,
            height: 100.h,
            borderRadius: 15.r,
            boxBorder: Border.all(color: kWhiteColor, width: 5.w),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Nguyễn Thị Yến Nhi',
            style: fontApp.copyWith(
                fontSize: 16, color: textWhiteColor, fontWeight: bold),
          ),
        ],
      ),
    );
  }
}
