import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, this.paddingButton, required this.onPressed,  this.textButton, this.styleTextButton, this.childButton, this.backgroundColor, this.horizontalPadding});

  final EdgeInsetsGeometry? paddingButton;
  final void Function() onPressed;
  final String ? textButton ;
  final TextStyle? styleTextButton;
  final Widget? childButton;
  final Color? backgroundColor;
  final double? horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: paddingButton ??EdgeInsets.symmetric(
              horizontal:horizontalPadding?? 120.w ,
              vertical: 14.h
          ),
          backgroundColor:backgroundColor?? AppColor.mainOrange
      ),
      onPressed: onPressed,
      child:childButton ?? Text(
        textButton ?? 'Sign In' ,
        textAlign: TextAlign.center,
        style:styleTextButton?? AppTextStyle.font14WhiteSemiBold
      ),
    );
  }
}
