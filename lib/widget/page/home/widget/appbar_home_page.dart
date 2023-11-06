import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        NetWorkImageWidget(
          url:
              'https://i.pinimg.com/564x/7d/e8/38/7de83860b8729399d365841032f807f6.jpg',
          height: 46.h,
          width: 46.h,
          borderRadius: 23.h,
        ),
        SizedBox(width: 15.w),
        Text(
          'Eraij ali',
          style: fontApp.copyWith(
              fontSize: 15, color: textBlackColor, fontWeight: semiBold),
        ),
        const Spacer(),
        GestureDetector(
            onTap: onTap,
            child: Assets.icons.iconRingBell.svg(height: 22.h, width: 22.w))
      ],
    );
  }
}
