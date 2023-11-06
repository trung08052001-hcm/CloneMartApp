import 'package:clonemartapp/data/enum/profile_type.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.option,
    required this.onTap,
  });

  final ProfileType option;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 20.r,
            backgroundColor: kShadowColor,
            child: Center(
              child: option.svgGenImage.svg(
                height: 18.h,
                color: kBlack3dDColor,
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            option.title,
            style: fontApp.copyWith(fontSize: 14, fontWeight: semiBold),
          ),
          const Spacer(),
          if (option != ProfileType.logout)
            Assets.icons.iconRightArrow.svg(height: 15.h, color: kGreyColor),
        ],
      ),
    );
  }
}
