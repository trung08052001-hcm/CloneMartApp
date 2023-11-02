import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../gen/assets.gen.dart';

class AppTextField extends StatefulWidget {
  const AppTextField(
      {Key? key,
      this.maxLength,
      this.borderRadius = 5,
      this.isReadOnly = false,
      this.isObscure = false,
      this.isPhone = false,
      this.isOutline = true,
      this.isHaveEyePassword = false,
      this.isUnderline = false,
      this.hintText = '',
      this.contentPadding = const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      this.filledColor,
      this.textAlign = TextAlign.start,
      this.prefixIcon,
      this.suffixIcon,
      this.enabledBorder,
      this.focusedBorder,
      this.errorBorder,
      this.focusedErrorBorder,
      this.controller,
      this.validator,
      this.onTap,
      this.onSubmit,
      this.onChanged,
      this.focusNode,
      this.style,
      this.maxLine})
      : super(key: key);
  final int? maxLength;
  final int? maxLine;
  final bool isReadOnly;
  final bool isObscure;
  final bool isPhone;
  final bool isOutline;
  final bool isUnderline;
  final bool isHaveEyePassword;
  final double borderRadius;
  final String hintText;
  final TextAlign textAlign;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextStyle? style;
  final Color? filledColor;
  final Function()? onTap;
  final Function(String)? onChanged;
  final Function(String?)? onSubmit;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isHaveEyePassword || widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: isObscure ? 1 : widget.maxLine,
      onFieldSubmitted: widget.onSubmit,
      textAlignVertical: TextAlignVertical.center,
      onTap: widget.onTap ?? () {},
      readOnly: widget.isReadOnly,
      inputFormatters: <TextInputFormatter>[
        LengthLimitingTextInputFormatter(widget.maxLength),
      ],
      obscureText: isObscure,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      textAlign: widget.textAlign,
      validator: widget.validator,
      textCapitalization: TextCapitalization.words,
      keyboardType: widget.isPhone ? TextInputType.phone : TextInputType.text,
      style:
          widget.style ?? fontApp.copyWith(fontSize: 12, color: textBlackColor),
      cursorColor: kWhiteColor,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintStyle: widget.style ??
            fontApp.copyWith(fontSize: 12, color: textGreyColor),
        filled: true,
        fillColor: widget.filledColor ?? backGroundTextField,
        hintText: widget.hintText,
        suffixIconConstraints: BoxConstraints(minHeight: 20.h, minWidth: 20.w),
        prefixIconConstraints: BoxConstraints(minHeight: 20.h, minWidth: 20.w),
        suffixIcon: _buildIcon(widget.suffixIcon),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: widget.prefixIcon,
        ),
        focusedBorder: inputBorder(
            input: widget.focusedBorder, color: backGroundTextField),
        enabledBorder: inputBorder(
            input: widget.enabledBorder, color: backGroundTextField),
        errorBorder: inputBorder(input: widget.errorBorder, color: kRedColor),
        focusedErrorBorder:
            inputBorder(input: widget.focusedErrorBorder, color: kRedColor),
        contentPadding: widget.contentPadding,
        isDense: true,
      ),
    );
  }

  Widget? _buildIcon(Widget? icon) {
    if (icon == null && !widget.isHaveEyePassword) {
      return null;
    }
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: icon ?? (widget.isHaveEyePassword ? iconPassword() : null),
    );
  }

  UnderlineInputBorder? underLineIntputBorder(
      {required double width, required Color color}) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
      borderRadius: BorderRadius.circular(widget.borderRadius),
    );
  }

  OutlineInputBorder outLineInputBorder(
      {required double width, required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
      borderRadius: BorderRadius.circular(widget.borderRadius),
    );
  }

  InputBorder? inputBorder({
    required InputBorder? input,
    required Color color,
  }) {
    if (input != null) {
      return input;
    }
    if (widget.isOutline) {
      return outLineInputBorder(width: 1, color: color);
    }
    if (widget.isUnderline) {
      return underLineIntputBorder(width: 1, color: color);
    }
    return InputBorder.none;
  }

  InkWell iconPassword() {
    return InkWell(
      onTap: () {
        setState(() {
          isObscure = !isObscure;
        });
      },
      child: isObscure
          ? Assets.icons.iconHidePassword.svg()
          : Assets.icons.iconShowPassword.svg(),
    );
  }
}
