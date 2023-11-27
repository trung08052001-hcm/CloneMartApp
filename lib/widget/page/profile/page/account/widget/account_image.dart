import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class AccountImage extends StatelessWidget {
  const AccountImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          NetWorkImageWidget(
            url:
                'https://scontent.fsgn8-4.fna.fbcdn.net/v/t1.6435-9/123806964_2684711161781513_4760063319611442908_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=7f8c78&_nc_ohc=lv8AlEDm2qkAX_x187L&_nc_ht=scontent.fsgn8-4.fna&oh=00_AfCVMr1ufnAPAxEPlkyHs9Ofpn7nbsvux6ahAskbpnbb6g&oe=656C6364',
            width: 80.h,
            height: 80.h,
            borderRadius: 15.r,
            boxBorder: Border.all(color: kWhiteColor, width: 5.w),
          ),
          Assets.icons.iconEdit.svg(height: 20.h, color: kGreyColor)
        ],
      ),
    );
  }
}
