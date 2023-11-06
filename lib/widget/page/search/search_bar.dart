import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar(
      {super.key,
      this.onTap,
      this.onTapBack,
      this.isShowBackButton = false,
      this.readOnly = true,
      this.onSubmit});

  final bool isShowBackButton;
  final bool readOnly;

  final Function()? onTap;
  final Function(String?)? onSubmit;
  final Function()? onTapBack;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        isShowBackButton
            ? IconButton(
                icon: Assets.icons.iconBackIos
                    .svg(height: 15.h, width: 15.w, color: kGreyColor),
                onPressed: onTapBack,
              )
            : const SizedBox(),
        Expanded(
          child: AppTextField(
            onTap: onTap,
            onSubmit: onSubmit,
            contentPadding: EdgeInsets.symmetric(vertical: 15.h),
            filledColor: kGhostWhiteColor,
            // hintText: S().search_a_doctor,
            borderRadius: 15.r,
            style: fontApp.copyWith(fontSize: 12),
            isReadOnly: readOnly,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Assets.icons.iconSearch.svg(height: 15.h),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Assets.icons.iconSearchMic.svg(
                height: 15.h,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
