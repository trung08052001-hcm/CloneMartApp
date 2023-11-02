import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/page/animated/three_bounce.dart';
import 'package:flutter/material.dart';

//
class AppButton extends StatelessWidget {
  const AppButton.primary(
      {Key? key,
      required this.onTap,
      this.title = '',
      this.style,
      this.borderRadius = 5,
      this.isLoading = false,
      this.border,
      this.borderRadiusGeometry,
      this.backGroundColor = kBlack99Color,
      this.textColor = kWhiteColor,
      this.padding = const EdgeInsets.all(0),
      this.margin,
      this.textFontWeight = FontWeight.w500,
      this.borderColor,
      this.loadingColor = kWhiteColor,
      this.height,
      this.borderWidth = 1,
      this.width,
      this.textFontSize,
      this.boxDecoration,
      this.alignment = Alignment.center,
      this.boxShape = BoxShape.rectangle,
      this.textAlign = TextAlign.center,
      this.child})
      : super(key: key);
  const AppButton({
    required this.onTap,
    this.title = '',
    this.style,
    this.borderRadius = 5,
    this.isLoading = false,
    this.borderRadiusGeometry,
    this.border,
    this.backGroundColor = kWhiteColor,
    this.textColor = kBlackColor,
    this.padding = const EdgeInsets.all(0),
    this.margin,
    this.textFontWeight = FontWeight.w500,
    this.borderColor,
    this.height,
    this.loadingColor = kWhiteColor,
    this.borderWidth = 1,
    this.width,
    this.textFontSize,
    this.boxDecoration,
    this.alignment = Alignment.center,
    this.boxShape = BoxShape.rectangle,
    this.textAlign = TextAlign.center,
    this.child,
    Key? key,
  }) : super(key: key);
  const AppButton.secondary(
      {Key? key,
      required this.onTap,
      this.title = '',
      this.style,
      this.loadingColor = kWhiteColor,
      this.borderRadius = 5,
      this.isLoading = false,
      this.border,
      this.borderRadiusGeometry,
      this.backGroundColor = kTransparentColor,
      this.textColor = kBlack99Color,
      this.padding = const EdgeInsets.all(0),
      this.margin,
      this.textFontWeight = FontWeight.w500,
      this.borderColor = kBlack99Color,
      this.height,
      this.borderWidth = 1,
      this.width,
      this.textFontSize = 14,
      this.boxDecoration,
      this.alignment = Alignment.center,
      this.boxShape = BoxShape.rectangle,
      this.textAlign = TextAlign.center,
      this.child})
      : super(key: key);
  final double borderRadius;
  final double? height;
  final double? width;
  final double? textFontSize;
  final double borderWidth;
  final bool isLoading;
  final String title;
  final Color backGroundColor;
  final Color textColor;
  final Color loadingColor;
  final Color? borderColor;
  final TextStyle? style;
  final TextAlign textAlign;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadiusGeometry;
  final FontWeight textFontWeight;
  final BoxDecoration? boxDecoration;
  final BoxBorder? border;
  final BoxShape boxShape;
  final Widget? child;
  final Function()? onTap;

  final AlignmentGeometry? alignment;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        margin: margin,
        height: height,
        width: width,
        alignment: alignment,
        padding: padding,
        constraints: const BoxConstraints.tightFor(),
        decoration: boxDecoration ??
            BoxDecoration(
                shape: boxShape,
                color: backGroundColor,
                border: boxShape == BoxShape.circle
                    ? null
                    : border ??
                        Border.all(
                            color: borderColor ?? backGroundColor,
                            width: borderWidth),
                borderRadius: boxShape == BoxShape.circle
                    ? null
                    : borderRadiusGeometry ??
                        BorderRadius.circular(borderRadius)),
        child: isLoading
            ? ThreeBounceLoading(
                size: 10,
                color: loadingColor,
              )
            : child ??
                Text(
                  title,
                  textAlign: textAlign,
                  style: style ??
                      fontApp.copyWith(
                          fontSize: textFontSize ?? 14,
                          color: textColor,
                          fontWeight: textFontWeight),
                ),
      ),
    );
  }
}
