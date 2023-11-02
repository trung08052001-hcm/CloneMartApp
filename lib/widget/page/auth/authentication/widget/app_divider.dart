import 'package:clonemartapp/res/color_core.dart';
import 'package:flutter/widgets.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
    required this.height,
    required this.width,
    this.color,
  }) : super(key: key);

  const AppDivider.vertical({
    required this.width,
    this.height = 1,
    this.color = kGreyColor,
    Key? key,
  }) : super(key: key);
  const AppDivider.horizontal({
    required this.height,
    this.width = 1,
    this.color,
    Key? key,
  }) : super(key: key);
  final double height;
  final double width;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
