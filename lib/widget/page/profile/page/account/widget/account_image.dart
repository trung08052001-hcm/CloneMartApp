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
                'https://scontent.fsgn19-1.fna.fbcdn.net/v/t39.30808-6/327764172_886402092507227_5214911061825876344_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=9c7eae&_nc_ohc=RHKBwIl5uOgAX_o6XTm&_nc_ht=scontent.fsgn19-1.fna&oh=00_AfCt_E8tJX0vAicD5iuyVavygp7syb5_uPhnOmL8wYExGg&oe=658D2C52',
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
