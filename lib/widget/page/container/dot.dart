import 'package:clonemartapp/res/color_core.dart';
import 'package:flutter/material.dart';

class DotItem extends StatelessWidget {
  const DotItem(
      {required this.size, this.color = kWhiteColor, this.border, super.key});
  final double size;
  final Color color;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: color, border: border),
    );
  }
}
