// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/animated/dot.dart';
import 'package:flutter/material.dart';

class ThreeBounceLoading extends StatelessWidget {
  final double size;
  final Color color;
  const ThreeBounceLoading({
    Key? key,
    this.color = kWhiteColor,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // dot1
        SizedBox(
          width: size,
          height: size,
          child: Center(
            child: Dot(
              color: color,
              delayTime: 0,
            ),
          ),
        ),
        SizedBox(width: 6.w),
        // dot2
        SizedBox(
          width: size,
          height: size,
          child: Center(
            child: Dot(
              color: color,
              delayTime: 400,
            ),
          ),
        ),
        SizedBox(width: 6.w),
        // dot3
        SizedBox(
          width: size,
          height: size,
          child: Center(
            child: Dot(
              color: color,
              delayTime: 700,
            ),
          ),
        )
      ],
    );
  }
}
