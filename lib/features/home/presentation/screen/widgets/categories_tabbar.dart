import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_state.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/food_container.dart';

class CategoryTabbar extends StatefulWidget {
  const CategoryTabbar({super.key});

  @override
  CategoryTabbarState createState() => CategoryTabbarState();
}

class CategoryTabbarState extends State<CategoryTabbar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeAreaLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is HomeAreaSuccessState) {
          final areas = state.areaModel.areaData;

          if (areas.isEmpty) {
            return const Center(child: Text('No categories available.'));
          }

          return SafeArea(
            child: DefaultTabController(
              length: areas.length,
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
                      unselectedLabelStyle: AppTextStyle.font14SlateGrayRegular,
                      unselectedLabelColor: AppColor.slateGray,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: AppColor.mainOrange,
                          width: 1.w,
                        ),
                      ),
                      tabs: areas
                          .map((area) => Tab(text: area.areaName))
                          .toList(),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: areas.map((area) {
                          return FoodContainer();
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else if (state is HomeAreaFailureState) {
          return const Center(
            child: Text('Failed to load categories.'),
          );
        }
        return Container();
      },
    );
  }
}
