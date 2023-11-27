import 'package:clonemartapp/res/color_core.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({Key? key}) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isSelected,
      onChanged: (bool? newValue) {
        setState(() {
          isSelected = newValue!;
        });
      },
      activeColor: kGhostWhiteColor,
      checkColor: kBlueColor,
      visualDensity: VisualDensity.compact,
      side: const BorderSide(color: kGhostWhiteColor),
    );
  }
}
