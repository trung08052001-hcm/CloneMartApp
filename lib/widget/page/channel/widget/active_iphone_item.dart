import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/channel_model/channel_model.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/container/dot.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:flutter/material.dart';

class ActiveIphoneItem extends StatelessWidget {
  const ActiveIphoneItem({
    Key? key,
    required this.channel,
  }) : super(key: key);
  final ChannelModel channel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<NavigationService>().navigateTo(RouteConst.main);
      },
      child: Stack(
        children: <Widget>[
          NetWorkImageWidget(
            url: channel.avatar,
            height: 55.w,
            width: 55.w,
            boxShape: BoxShape.circle,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: DotItem(
                size: 15.w,
                color: kBlueColor,
                border: Border.all(color: kWhiteColor, width: 2.w)),
          ),
        ],
      ),
    );
  }
}
