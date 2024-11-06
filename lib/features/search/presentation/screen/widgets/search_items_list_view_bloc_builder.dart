import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/widgets/custom_error_message.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_cubit.dart';
import 'package:recipes_book_app/features/search/presentation/manager/search_state.dart';
import 'package:recipes_book_app/features/search/presentation/screen/widgets/search_items_list_view.dart';

class SearchItemsListViewBlocBuilder extends StatelessWidget {
  const SearchItemsListViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit , SearchState>(builder: (
        context, state) {
      if(state is SearchLoading){
        return Center(child: CircularProgressIndicator(color: AppColor.mainOrange,),);
      }else if(state is SearchSuccess){
        return getSearchData(state.searchModelResponse);
      }else if(state is SearchFailed){
        return CustomMessage(error:"No meals for this name");
      }else {
        return CustomMessage(error:"Start typing to find your meals..." ,backgroundColor: AppColor.mainOrange,);
      }
    }
    );
  }

  Widget getSearchData(searchModelResponse){
    return SearchItemsListView(searchModelResponse: searchModelResponse);
  }

}
