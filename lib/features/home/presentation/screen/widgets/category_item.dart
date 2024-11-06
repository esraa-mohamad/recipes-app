import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_state.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({super.key});

  @override
  CategoryContainerState createState() => CategoryContainerState();
}

class CategoryContainerState extends State<CategoryContainer> {
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeCategoryLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is HomeCategorySuccessState) {
          final categories = state.categoryModel.categroyData;

          return Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItem =
                        category.name == selectedItem ? '' : category.name;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: category.name == selectedItem
                        ? Colors.orange
                        : AppColor.lightSlateGray,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Text(
                    category.name,
                    style: TextStyle(
                      color: category.name == selectedItem
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          );
        } else if (state is HomeCategoryFailureState) {
          return Center(
            child: Text('Failed to load categories.'),
          );
        }
        return Container();
      },
    );
  }
}
