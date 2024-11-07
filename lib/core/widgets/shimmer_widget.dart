import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key, required this.widget});

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
          decoration: BoxDecoration(
           borderRadius:  BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: widget),
    );
  }
}
