import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/font_family_helper.dart';
import 'package:recipes_book_app/core/theme/font_weight_helper.dart';

class AppTextStyle{

  static  TextStyle font18DarkGreenSemiBold = TextStyle(
    fontSize: 18,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold ,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static  TextStyle font16DarkGreenSemiBold = TextStyle(
    fontSize: 16,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14SlateGrayLight = TextStyle(
    fontSize: 14,
    color: AppColor.slateGray,
    fontWeight: FontWeightHelper.light ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14OrangeMedium = TextStyle(
    fontSize: 14,
    color: AppColor.mainOrange,
    fontWeight: FontWeightHelper.medium ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );
}