import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class SeeAllSection extends StatelessWidget {
  const SeeAllSection({
    super.key,
    this.onTap,
    this.isViewAll = true,
    required this.title,
    required this.child,
    this.underlineText,
    this.textStyle,
  });

  final String title;

  final TextStyle? textStyle;

  final String? underlineText;

  final bool isViewAll;

  final Widget child;

  final dynamic Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: textStyle ??
                    fontApp.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                      color: kBlackColor,
                    ),
              ),
              if (isViewAll)
                AppButton(
                  onTap: onTap,
                  title: underlineText ?? 'S().see_all',
                  style: fontApp.copyWith(
                      fontSize: 10, fontWeight: bold, color: kTealColor),
                  boxDecoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: kTealColor, width: 2.w)),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        child
      ],
    );
  }
}
