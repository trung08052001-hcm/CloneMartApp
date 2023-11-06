import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/channel_model/channel_model.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class ChanneListlItem extends StatelessWidget {
  const ChanneListlItem({
    super.key,
    required this.item,
  });

  final ChannelModel item;
  @override
  Widget build(BuildContext context) {
    return AppButton(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      backGroundColor: kGhostWhiteColor,
      onTap: () {
        getIt<NavigationService>().navigateTo(RouteConst.main);
      },
      child: Row(children: <Widget>[
        NetWorkImageWidget(
          url: item.avatar,
          height: 62.w,
          width: 62.w,
          boxShape: BoxShape.circle,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              item.name,
              style: fontApp.copyWith(fontSize: 16, color: textBlackColor),
            ),
            SizedBox(height: 5.h),
            Text('Nice to meet you',
                style: fontApp.copyWith(fontSize: 12, color: textBlueColor)),
          ],
        ),
        const Spacer(),
        Column(
          children: <Widget>[
            Text(
              '12:18',
              style: fontApp.copyWith(fontSize: 12, color: textGrey2Color),
            ),
            SizedBox(height: 10.h),
            if (item.countMessage > 0)
              Container(
                padding: EdgeInsets.all(5.w),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: kBlueColor),
                child: Text(
                  item.countMessage.toString(),
                  style: fontApp.copyWith(fontSize: 10, color: textWhiteColor),
                ),
              ),
          ],
        ),
      ]),
    );
  }
}
