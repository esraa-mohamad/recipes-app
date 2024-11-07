import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/features/home/presentation/manager/area_cubit/area_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/area_cubit/area_state.dart';
import 'package:recipes_book_app/features/home/presentation/manager/food_cubit/food_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/food_container.dart';

class CategoryTabBar extends StatefulWidget {
  const CategoryTabBar({super.key});

  @override
  CategoryTabBarState createState() => CategoryTabBarState();
}

class CategoryTabBarState extends State<CategoryTabBar> {
  late AreaCubit areaCubit;
  @override
  void initState() {
    super.initState();
    // Get the food items for the first area by default when the widget is created
     areaCubit = AreaCubit.get(context);
    areaCubit.stream.listen((state) {
      if (state is AreaSuccessState && state.areaModel.areaData.isNotEmpty) {
        // Fetch foods for the first area
        // ignore: use_build_context_synchronously
        FoodCubit.get(context).getAllFoods(state.areaModel.areaData[0].areaName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AreaCubit, AreaState>(
      builder: (context, state) {
        if (state is AreaLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is AreaSuccessState) {
          final areas = state.areaModel.areaData;

          if (areas.isEmpty) {
            return const Center(child: Text('No categories available.'));
          }
          var cubit = FoodCubit.get(context);
          return SafeArea(
            child: DefaultTabController(
              length: areas.length,
              child: SizedBox(
                height: 400,
                child: Column(
                  children: <Widget>[
                    TabBar(
                      onTap: (value) {
                        cubit.getAllFoods(areas[value].areaName);
                      },
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
        } else if (state is AreaFailureState) {
          return const Center(
            child: Text('Failed to load categories.'),
          );
        }
        return Container();
      },
    );
  }
}