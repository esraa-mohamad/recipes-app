import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/screen/widgets/meals_body.dart';
 
class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});
   @override
  Widget build(BuildContext context) {
         return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Dessert',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: AppColor.mainOrange,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MealsBody() ,),
          );
  }
   
}
