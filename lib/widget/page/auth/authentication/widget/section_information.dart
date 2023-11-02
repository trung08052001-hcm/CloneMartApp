import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
    required this.title,
    required this.child,
    this.isEditable = false,
  });

  final String title;
  final Widget child;
  final bool isEditable;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              title,
              style: fontApp.copyWith(
                  fontSize: 14, fontWeight: medium, color: textGreyColor),
            ),
            const Spacer(),
            if (isEditable)
              GestureDetector(
                onTap: () {},
                child:
                    Assets.icons.iconEdit.svg(height: 22.h, color: kGreyColor),
              ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        child
      ],
    );
  }
}
