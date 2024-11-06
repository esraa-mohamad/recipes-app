import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/features/home/presentation/manager/category_cubit/category_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/category_cubit/category_state.dart';

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  CategoryItemState createState() => CategoryItemState();
}

class CategoryItemState extends State<CategoryItem> {
  String selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CategorySuccessState) {
          final categories = state.categoryModel.categroyData;

          return Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: categories.map((category) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.mealsScreen,
                      arguments: category.name);
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
        } else if (state is CategoryFailureState) {
          return Center(
            child: Text('Failed to load categories.'),
          );
        }
        return Container();
      },
    );
  }
}
