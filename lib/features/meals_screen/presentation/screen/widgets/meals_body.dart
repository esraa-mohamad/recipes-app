import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/manager/meals_cubit.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/manager/meals_state.dart';
import 'package:recipes_book_app/features/meals_screen/presentation/screen/widgets/meals_list.dart';

class MealsBody extends StatelessWidget {
  const MealsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealCubit, MealsState>(
      builder: (context, state) {
        if (state is MealsLoadingState) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 15),
              ),
               const MealsSliverList(isLoading: true),
            ],
          );
        } else if (state is MealsSuccessState) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(height: 15),
              ),
              MealsSliverList(meals: state.mealModel, isLoading: false),
            ],
          );
        } else if (state is MealsFailureState) {
          return Center(
            child: Text('Failed to load data'),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
