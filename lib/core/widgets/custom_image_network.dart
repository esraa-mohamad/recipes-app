import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/app_images.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork({super.key, required this.imagePath, this.width, this.height, this.fit});

  final String? imagePath;
  final double ? width ;
  final double ? height ;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imagePath ?? AppImages.mealImageFake,
      width: width ?? 67.w,
      height: height ?? 70.h,
      fit: fit ?? BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Image.network(
          AppImages.mealImageFake,
          width: width ?? 67.w,
          height: height ?? 70.h,
          fit: fit?? BoxFit.cover,
        );
      },
    );
  }
}
