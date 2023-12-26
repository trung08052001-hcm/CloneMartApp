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
                'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/327764172_886402092507227_5214911061825876344_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=RHKBwIl5uOgAX_o6XTm&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfCt_E8tJX0vAicD5iuyVavygp7syb5_uPhnOmL8wYExGg&oe=658D2C52',
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
