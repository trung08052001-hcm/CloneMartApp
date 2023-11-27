import 'package:clonemartapp/data/address_model/address_model.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:flutter/material.dart';

class AddressInfo extends StatelessWidget {
  const AddressInfo({
    Key? key,
    required this.address,
    required this.isSelected,
  }) : super(key: key);
  final AddressModel address;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              address.name,
              style: fontApp.copyWith(fontSize: 14, fontWeight: semiBold),
            ),
            SizedBox(
              width: 20.h,
            ),
            Text(
              address.phone,
              style: fontApp.copyWith(fontSize: 14, fontWeight: thin),
            ),
            const Spacer(),
            if (isSelected)
              Assets.icons.iconCheckbox.svg(
                color: kBlueColor,
                height: 16.h,
              )
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          address.address,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
          style: fontApp.copyWith(fontSize: 14, fontWeight: thin),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: <Widget>[
            const Spacer(),
            AppButton(
              onTap: () {},
              height: 30.h,
              width: 50.h,
              title: 'S().delete',
              style: fontApp.copyWith(
                  fontSize: 14, fontWeight: semiBold, color: kRedColor),
            ),
            AppButton(
              onTap: () {},
              height: 30.h,
              width: 50.h,
              title: 'S().config',
              style: fontApp.copyWith(
                  fontSize: 14, fontWeight: semiBold, color: kBlueColor),
            ),
          ],
        )
      ],
    );
  }
}
