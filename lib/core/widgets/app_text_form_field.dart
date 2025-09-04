import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

import '../themes/app_color.dart';
import '../utils/styles.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText = false,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.onTap,
    this.onTapOutside,
    this.keyboardType,
    this.onChanged,
    this.focusNode,
    this.textAlign,
    this.maxLength,
    this.inputFormatters,
  });
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final TextAlign? textAlign;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool secureIcon = true;
  @override
  Widget build(BuildContext context) {


    return TextFormField(
      onChanged: widget.onChanged,
      focusNode: widget.focusNode,
      onTapOutside: widget.onTapOutside,
      keyboardType: widget.keyboardType,
      onTap: widget.onTap,
      controller: widget.controller,
      maxLines: widget.maxLines,
      textAlign: widget.textAlign ?? TextAlign.start,
      maxLength: widget.maxLength,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            widget.contentPadding ??
            EdgeInsets.symmetric(horizontal: context.setMinSize(16), vertical: context.setMinSize(18)),
        focusedBorder:
            widget.focusedBorder ?? outLineBorder(color: AppColor.primary),
        enabledBorder:
            widget.enabledBorder ?? outLineBorder(color: AppColor.secondary),
        errorBorder: outLineBorder(color: AppColor.error),
        focusedErrorBorder: outLineBorder(color: AppColor.error),
        hintStyle: widget.hintStyle ?? context.small,
        hintText: widget.hintText,
        prefixIcon: widget.suffixIcon,
        fillColor: widget.backgroundColor ?? AppColor.surface,
        filled: true,
        suffixIcon: widget.isObscureText
            ? InkWell(
                onTap: () {
                  secureIcon = !secureIcon;
                  setState(() {});
                },
                child: Icon(
                  secureIcon
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              )
            : widget.prefixIcon,
      ),
      obscureText: widget.isObscureText ? true : false,
      style: context.small.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColor.primary,
      ),
      validator: (value) {
        return widget.validator(value);
      },
    );
  }

  OutlineInputBorder outLineBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(context.setMinSize(16)),
    );
  }
}
