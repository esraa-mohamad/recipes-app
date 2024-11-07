import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';


class DetailsLoadingShimmer extends StatelessWidget {
  const DetailsLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: List.generate(1, (index) => ShimmerPlaceholder()),
      ),
    );
  }
}
class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.all(8.0.r),
      child: Container(
        width: double.infinity,
        height: 300.h,
        color: Colors.grey[300],
      ),
    );
  }
}
