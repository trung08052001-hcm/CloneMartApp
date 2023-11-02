import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';

class TextButtonApp extends StatelessWidget {
  final String title;
  final double? fontSize;
  final Color colorText;
  final FontWeight fontWeight;
  final Function()? onTap;
  const TextButtonApp({
    required this.title,
    this.colorText = kBlackColor,
    this.fontSize,
    this.fontWeight = FontWeight.w600,
    this.onTap,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(Object context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: fontApp.copyWith(
            color: colorText, fontWeight: fontWeight, fontSize: fontSize ?? 12),
      ),
    );
  }
}
