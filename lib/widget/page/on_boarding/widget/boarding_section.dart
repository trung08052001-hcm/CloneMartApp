import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/data/onboarding_detail/boarding_detail.dart';
import 'package:flutter/material.dart';

class BoardingSection extends StatelessWidget {
  const BoardingSection({
    super.key,
    required this.onBoardingDetail,
  });

  final OnBoardingDetail onBoardingDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: screenHeight * 2 / 5,
          child: onBoardingDetail.assetGenImage.image(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            onBoardingDetail.title,
            style: fontApp.copyWith(
                fontSize: 20, color: textDartColor, fontWeight: semiBold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          onBoardingDetail.content,
          style: fontApp.copyWith(
              fontSize: 15, color: textGreyColor, fontWeight: semiBold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
