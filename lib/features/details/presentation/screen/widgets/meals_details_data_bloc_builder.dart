import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipes_book_app/core/widgets/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:recipes_book_app/core/widgets/custom_error_message.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_cubit.dart';
import 'package:recipes_book_app/features/details/presentation/manager/details_state.dart';
import 'package:recipes_book_app/features/details/presentation/screen/widgets/meals_details_list_view.dart';

class MealsDetailsDataBlocBuilder extends StatelessWidget {
  const MealsDetailsDataBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        if (state is DetailsLoading) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Column(
              children: List.generate(1, (index) => ShimmerPlaceholder()),
            ),
          );
        } else if (state is DetailsSuccess) {
          return getMealsDetailsData(state.mealsModelResponse);
        } else if (state is DetailsFailed) {
          return Center(
            child: CustomMessage(error: state.apiErrorModel.message.toString()),
          );
        } else {
          return ShimmerWidget(
            widget: Column(
              children: List.generate(1, (index) => ShimmerPlaceholder()),
            ),
          );
        }
      },
    );
  }

  Widget getMealsDetailsData(mealsModelResponse) {
    return MealsDetailsListView(mealsModelResponse: mealsModelResponse);
  }
}

class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.all(8.0.r),
      child: Container(
        width: double.infinity,
        height: 300.h,
        color: Colors.grey[300],
      ),
    );
  }
}
