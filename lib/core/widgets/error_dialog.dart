
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../helper/app_lottie.dart';
import '../theme/app_color.dart';
import '../theme/app_text_style.dart';


void errorDialog(BuildContext context, String error) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1.5,
      backgroundColor: Colors.white,
      child: Container(
        width: 450.w,
        height: 400.h,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, offset: Offset(15, 15), blurRadius: 3),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(AppLottie.error , width: 200.w , height: 150.h),
            SizedBox(
              height: 15.h,
            ),
            Text(
              error,
              maxLines: 3,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style:
                  AppTextStyle.font15OrangeSemiBold
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.w),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    backgroundColor: AppColor.mainOrange,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Retry',
                    style:
                        AppTextStyle.font14WhiteSemiBold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
