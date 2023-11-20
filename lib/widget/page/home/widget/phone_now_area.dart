import 'package:clonemartapp/data/phone_model/consultants_model.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class PhoneNowArea extends StatelessWidget {
  const PhoneNowArea({
    super.key,
    required this.phone,
  });

  final ConsultantsModel phone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Assets.icons.iconPhone.svg(
            height: 20.h,
            // ignore: deprecated_member_use_from_same_package
            color: kWhiteColor,
          ),
          Text(
            '0902542116',
            style: fontApp.copyWith(fontSize: 9, color: textWhiteColor),
          ),
          //
          SizedBox(
            width: 15.w,
          ),
          AppButton(
            onTap: () {
              // getIt<NavigationService>().navigateToWithArgs(
              //     routeName: RouteConst.appointmentDetail,
              //     args: phone.toJson());
            },
            height: 22.h,
            width: 60.w,
            borderRadius: 10.r,
            textFontSize: 10,
            child: Text(
              'contact',
              style: fontApp.copyWith(
                  fontSize: 8.w, color: textGreenColor, fontWeight: semiBold),
            ),
          )
        ],
      ),
    );
  }
}
