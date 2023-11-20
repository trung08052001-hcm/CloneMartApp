import 'package:clonemartapp/data/phone_model/consultants_model.dart';
import 'package:clonemartapp/data/phone_model/phone_models.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/home/widget/rating_phone.dart';
import 'package:flutter/material.dart';

class PhoneInforHome extends StatelessWidget {
  const PhoneInforHome({
    super.key,
    required this.phone,
    required this.icon,
  });

  final PhoneModels phone;

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'name',
              // '${S().dr}${doctor.name}',
              style: fontApp.copyWith(
                  fontSize: 14, color: textBlackColor, fontWeight: bold),
            ),
            const Spacer(),
            icon ?? const SizedBox(),
          ],
        ),
        SizedBox(height: 3.h),
        Text(
          phone.specialty,
          style: fontApp.copyWith(fontSize: 10, color: textBlackColor),
        ),
        SizedBox(height: 5.h),
        SizedBox(
          width: 197.w,
          child: Text(
            'A cardiologist is a medical doctor who specializes in '
            'diagnosing and treating heart-related conditions. They may use'
            'non-invasive or invasive tests and prescribe medications or'
            'recommend surgical interventions based on their findings. They'
            'may also conduct research to better understand heart disease and'
            'develop new treatments.',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: fontApp.copyWith(fontSize: 9, color: textBlackColor),
          ),
        ),
        SizedBox(height: 3.h),
        Expanded(
          child: Row(
            children: <Widget>[
              AppButton(
                onTap: () {
                  // getIt<NavigationService>().navigateToWithArgs(
                  //   routeName: RouteConst.appointmentDetail,
                  //   args: phone.toJson(),
                  // );
                },
                height: 22.h,
                width: 56.w,
                borderRadius: 15.r,
                backGroundColor: kDeepTealColor,
                title: 'S().book',
                style: fontApp.copyWith(fontSize: 10, color: textWhiteColor),
              ),
              const Spacer(),
              const RatingPhone(
                isReview: true,
                fontsize: 9,
                textColor: kBlackColor,
                reviews: '111',
                // '1111 ${S().reviews}',
              )
            ],
          ),
        )
      ],
    );
  }
}
