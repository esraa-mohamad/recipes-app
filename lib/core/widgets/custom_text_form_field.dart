import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        required this.hintText,
        this.hintStyle,
        this.suffixIcon,
        this.prefixIcon,
        this.contentPadding,
        this.fillBackgroundColor,
        this.border,
        this.focusedBorder,
        this.enabledBorder,
        this.errorBorder,
        this.focusedErrorBorder,
        this.obscureText,
        this.controller,
        required this.validator, this.onChanged});

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillBackgroundColor;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final bool? obscureText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event){
        FocusManager.instance.primaryFocus!.unfocus();
      },
      obscureText: obscureText ?? false,
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      onChanged:onChanged ,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyle.font14CadetGreyRegular,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        filled: true,
        fillColor: fillBackgroundColor ?? AppColor.antiFlashWhite,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(
                  color: AppColor.mainOrange
                )),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide.none),
        errorBorder: errorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.red)),
        focusedErrorBorder: focusedErrorBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.red)),
      ),
    );
  }
}
