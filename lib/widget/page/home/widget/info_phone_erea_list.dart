import 'package:clonemartapp/data/consultants/consultants_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/container/network_image.dart';
import 'package:clonemartapp/widget/page/home/widget/phone_now_area.dart';
import 'package:clonemartapp/widget/page/home/widget/rating_phone.dart';
import 'package:flutter/material.dart';

class PhoneInfo extends StatelessWidget {
  const PhoneInfo({
    Key? key,
    required this.phone,
  }) : super(key: key);
  final ConsultantsModel phone;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              ' ${phone.name}',
              style: fontApp.copyWith(
                  fontSize: 13, fontWeight: bold, color: textWhiteColor),
            ),
            SizedBox(height: 8.h),
            Text(
              'Kidney specialist',
              style: fontApp.copyWith(fontSize: 11, color: textWhiteColor),
            ),
            SizedBox(height: 8.h),
            Text(
              '17 July 2022 at 1:00am',
              style: fontApp.copyWith(fontSize: 11, color: textWhiteColor),
            ),
            SizedBox(height: 10.h),
            const RatingPhone(),
            SizedBox(height: 5.h),
            PhoneNowArea(
              phone: phone,
            ),
          ],
        ),
        const Spacer(),
        NetWorkImageWidget(
          height: double.infinity,
          width: 70.w,
          url: phone.avatar,
        )
      ],
    );
  }
}
