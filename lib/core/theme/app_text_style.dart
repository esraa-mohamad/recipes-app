import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/font_family_helper.dart';
import 'package:recipes_book_app/core/theme/font_weight_helper.dart';

class AppTextStyle {
  static TextStyle font18DarkGreenSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font16DarkGreenSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font14SlateGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColor.slateGray,
    fontWeight: FontWeightHelper.regular,
    fontFamily: FontFamilyHelper.poppinsFont,
  );
  static TextStyle font16SlateGrayRegular = TextStyle(
    fontSize: 16.sp,
    color: AppColor.slateGray,
    fontWeight: FontWeightHelper.regular,
    fontFamily: FontFamilyHelper.poppinsFont,
  );
  static TextStyle font14OrangeMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.mainOrange,
    fontWeight: FontWeightHelper.medium,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font14CadetGreyRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColor.cadetGrey,
    fontWeight: FontWeightHelper.regular,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font14DarkGreenMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.medium,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );
  static TextStyle font30DarkGreenBold = TextStyle(
    fontSize: 30.sp,
    color: AppColor.darkJungleGreen,
    fontWeight: FontWeightHelper.bold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font14WhiteSemiBold = TextStyle(
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );

  static TextStyle font15OrangeSemiBold = TextStyle(
    fontSize: 15.sp,
    color: AppColor.mainOrange,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: FontFamilyHelper.poppinsFont,
  );
}
