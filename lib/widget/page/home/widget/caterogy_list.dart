import 'package:clonemartapp/data/category_detail/category_detail.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/home/widget/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    super.key,
  });

  final List<CategoryDetail> categoryList = <CategoryDetail>[
    CategoryDetail(
        title: 'S().cardiologist', assets: Assets.icons.iconFavorite),
    CategoryDetail(title: 'S().dentist', assets: Assets.icons.iconTooth),
    CategoryDetail(
        title: 'S().psychologists', assets: Assets.icons.iconPhysycologist),
    CategoryDetail(
        title: ' S().psychologists', assets: Assets.icons.iconPhysycologist),
    CategoryDetail(title: 'S().theripiest', assets: Assets.icons.iconKnee),
    CategoryDetail(title: 'S().theripiest', assets: Assets.icons.iconKnee),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (screenWidth - kDefaultPadding * 2 - 3 * 40.h) / 4 + 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        itemCount: categoryList.length,
        separatorBuilder: (_, __) => SizedBox(width: 40.w),
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(category: categoryList[index]);
        },
      ),
    );
  }
}
