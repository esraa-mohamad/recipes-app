import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/routes/routes.dart';
import 'package:recipes_book_app/core/theme/app_color.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';
import 'package:recipes_book_app/core/widgets/error_dialog.dart';
import 'package:recipes_book_app/core/widgets/loading_dialog.dart';
import 'package:recipes_book_app/features/home/presentation/manager/logout_cubit/logout_cubit.dart';
import 'package:recipes_book_app/features/home/presentation/manager/logout_cubit/logout_state.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/shared_pref/app_prefs.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({
    super.key,
  });

  final AppPreferences appPreferences = getIt<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    final nameUser = appPreferences.getLoginName();
    return BlocConsumer<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if(state is LogoutLoading){
          loadingDialog(context);
        }else if(state is LogoutSuccess){
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed(Routes.onBoardingScreen);
        }else if(state is LogoutFailed){
          Navigator.of(context).pop();
          errorDialog(context, state.error);
        }
      },
      builder: (context, state) {
        var logoutCubit = LogoutCubit.get(context);
        return ListTile(
          leading: Image.asset(AppImages.splashLogo),
          title: Text(
            'Welcome, 👋🏻',
            style: AppTextStyle.font16SlateGrayRegular,
          ),
          subtitle: Text(
            "$nameUser ❤️",
            style: AppTextStyle.font16DarkGreenSemiBold,
          ),
          trailing: GestureDetector(
            onTap: (){
              logoutCubit.logout();
            },
            child: Icon(
              Icons.logout,
              color: AppColor.mainOrange,
            ),
          ),
        );
      },
    );
  }
}
