import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/food_container.dart';

class CategoryTabbar extends StatefulWidget {
  const CategoryTabbar({super.key});
  @override
  CategoryTabbarState createState() => CategoryTabbarState();
}

class CategoryTabbarState extends State<CategoryTabbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: SizedBox(
          height: 400,
          child: Column(
            children: <Widget>[
              TabBar(
                tabAlignment: TabAlignment.start,
                dividerHeight: 0.h,
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle: AppTextStyle.font16DarkGreenSemiBold,
                unselectedLabelStyle: AppTextStyle.font16SlateGrayLight,
                unselectedLabelColor: AppColor.slateGray,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    color: AppColor.mainOrange,
                    width: 2.w,
                  ),
                ),
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'All',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Chili chicken',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Crispy tofu',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fried fish',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FoodContainer(),
                        );
                      },
                    ),
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FoodContainer(),
                        );
                      },
                    ),
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FoodContainer(),
                        );
                      },
                    ),
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FoodContainer(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
