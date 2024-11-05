import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/home_state.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/category_section.dart';
import 'package:recipes_book_app/features/home/presentation/screen/widgets/header_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    HomeCubit.get(context).getAllCategories();
    HomeCubit.get(context).getAllAreas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 60.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderSection(),
                  SizedBox(
                    height: 30.h,
                  ),
                  CategorySection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
