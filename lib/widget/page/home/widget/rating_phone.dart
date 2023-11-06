import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';

class RatingDoctor extends StatelessWidget {
  const RatingDoctor({
    super.key,
    this.fontsize,
    this.reviews,
    this.isReview = false,
    this.textColor,
  });

  final double? fontsize;

  final String? reviews;

  final bool isReview;

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Assets.icons.iconStarRating.svg(
            // ignore: deprecated_member_use_from_same_package
            color: const Color(0XFFF1BC41),
            height: 14.h,
            width: 14.w),
        SizedBox(width: 5.h),
        Text(
          '(4.5)',
          style: fontApp.copyWith(
              fontSize: fontsize ?? 10, color: textColor ?? kWhiteColor),
        ),
        isReview
            ? Row(
                children: <Widget>[
                  SizedBox(width: 8.h),
                  Text(
                    reviews ?? '',
                    style: fontApp.copyWith(
                        fontSize: fontsize ?? 10, color: textColor),
                  )
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
