import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/home/data/models/food_model.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../saved_screen/presentation/manager/saved_cubit.dart';
import '../../../../saved_screen/presentation/manager/saved_state.dart';

class IconChangeBlocConsumer extends StatelessWidget {
  const IconChangeBlocConsumer({super.key, required this.foodData});
final FoodData foodData;
  @override
  Widget build(BuildContext context) {
    final savedCubit = SavedCubit.get(context);

    if (savedCubit.isClosed) {
      // Return a default icon or reset the state
      return Icon(Icons.bookmark_border, size: 20, color: AppColor.slateGray);
    }
    return BlocConsumer<SavedCubit , SavedState>(
        builder: (context , state){
          var savedCubit = SavedCubit.get(context);
          bool isSave = savedCubit.changeSave(foodData);
          return GestureDetector(
            onTap: (){
              savedCubit.saveAndAddData(foodData);
            },
            child: Icon(
              isSave ?
              Icons.bookmark:
              Icons.bookmark_border,
              size: 20,
              color: isSave ?
              AppColor.mainOrange :
              AppColor.slateGray,
            ),
          );
        },
        listener: (context , state){}
    );
  }
}
