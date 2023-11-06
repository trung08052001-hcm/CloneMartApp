import 'package:clonemartapp/data/category_detail/category_detail.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final CategoryDetail category;

  @override
  Widget build(BuildContext context) {
    final double baseWidth = (screenWidth - kDefaultPadding * 2 - 3 * 40.w) / 4;

    return Column(
      children: <Widget>[
        AppButton(
          onTap: () {},
          borderRadius: 5.r,
          backGroundColor: kGhostWhiteColor,
          height: baseWidth,
          width: baseWidth,
          child: category.assets.svg(height: 20.h),
        ),
        SizedBox(height: 5.h),
        SizedBox(
          width: baseWidth,
          child: Text(
            category.title,
            style: fontApp.copyWith(color: textBlackColor, fontSize: 10),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        )
      ],
    );
  }
}
