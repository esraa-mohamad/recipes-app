import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/font_family_helper.dart';
import 'package:recipes_book_app/core/theme/font_weight_helper.dart';

class AppTextStyle{

  static  TextStyle font18DarkGreenSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold ,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static  TextStyle font16DarkGreenSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14SlateGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColor.slateGray,
    fontWeight: FontWeightHelper.regular ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14OrangeMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.mainOrange,
    fontWeight: FontWeightHelper.medium ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14CadetGreyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColor.cadetGrey,
    fontWeight: FontWeightHelper.regular ,
    fontFamily: FontFamilyHelper.poppinsFont,

  );

  static  TextStyle font14DarkGreenMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.medium ,
    fontFamily: FontFamilyHelper.poppinsFont,
  );
}