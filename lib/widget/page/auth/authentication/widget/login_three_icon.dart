import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class LoginThreeIcon extends StatelessWidget {
  LoginThreeIcon({
    super.key,
  });

  final List<Login3rdType> types = <Login3rdType>[
    Login3rdType.facebook,
    Login3rdType.google,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => AppButton(
                onTap: () {},
                padding: EdgeInsets.all(5.w),
                child: types[index].svgGenImage.svg(height: 45.h),
              ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 15.w,
              ),
          itemCount: types.length),
    );
  }
}
