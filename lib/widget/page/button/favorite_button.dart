import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({
    super.key,
    required this.onTap,
  });

  final dynamic Function()? onTap;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool onclick = false;
  @override
  Widget build(BuildContext context) {
    return AppButton(
        height: 26.h,
        width: 26.h,
        onTap: () {
          widget.onTap;
          setState(() {
            onclick = !onclick;
          });
        },
        child: onclick
            ? Assets.icons.iconFavoriteFill.svg(
                color: kTealColor,
                height: 16.h,
              )
            : Assets.icons.iconFavorite.svg(
                color: kTealColor,
                height: 16.h,
              ));
  }
}
