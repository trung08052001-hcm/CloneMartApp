import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:flutter/material.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppbar(
      {Key? key,
      this.leading,
      this.hasLeading = true,
      this.title,
      this.style,
      this.color,
      this.actions,
      this.height,
      this.leadingColor = kGreyColor,
      this.isMargin = false,
      this.onPressBack,
      this.tabBar,
      this.elevation = 0})
      : super(key: key);
  final Color? color;
  final String? title;
  final TextStyle? style;
  final String? leading;
  final Color? leadingColor;
  final List<Widget>? actions;
  final double? height;
  final bool isMargin;
  final bool hasLeading;
  final VoidCallback? onPressBack;
  final PreferredSizeWidget? tabBar;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: isMargin
            ? EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h)
            : const EdgeInsets.all(0),
        child: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: actions,
          leading: !hasLeading
              ? const SizedBox.shrink()
              : leading != null
                  ? IconButton(
                      icon: Image.asset(
                        leading!,
                        fit: BoxFit.cover,
                        color: leadingColor,
                        width: 36.w,
                        height: 36.h,
                        filterQuality: FilterQuality.high,
                      ),
                      onPressed: onPressBack ?? actionBack,
                    )
                  : IconButton(
                      icon: Assets.icons.iconBackIos.svg(
                        height: 15.h,
                        width: 15.w,
                        color: leadingColor,
                      ),
                      onPressed: onPressBack ?? actionBack,
                    ),
          title: Text(
            title ?? '',
            style: style ??
                fontApp.copyWith(
                    fontSize: 18, fontWeight: semiBold, color: textGreyColor),
          ),
          backgroundColor: color ?? kTransparentColor,
          elevation: elevation,
          bottom: tabBar,
        ),
      ),
    );
  }

  Future<void> actionBack() {
    // if (isDetailsFromEstimation) {
    getIt<NavigationService>().pop();
    // } else {
    //   isCameraCapture = false;
    //   orientation();
    //   Get.offAllNamed(AppRoutesOME);
    // }
    // isDetailsFromEstimation = false;
    return Future<bool>.value(true);
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 50.h);
}
