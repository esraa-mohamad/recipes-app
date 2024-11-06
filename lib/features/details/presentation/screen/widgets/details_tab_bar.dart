import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_book_app/core/helper/app_icon.dart';

class DetailsTabBar extends StatelessWidget {
  const DetailsTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24 ,
          vertical: 12,
        ) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle ,
                color: Colors.white
              ),
              child: Icon(
                Icons.arrow_back ,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle ,
                color: Colors.white
            ),
            child: SvgPicture.asset(
              AppIcon.saveMark ,
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
