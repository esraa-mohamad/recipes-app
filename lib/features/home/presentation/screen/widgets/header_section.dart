import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';

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
    return ListTile(
      leading: Image.asset(AppImages.splashLogo),
      title: Text(
        'Welcome, 👋🏻',
        style: AppTextStyle.font16SlateGrayRegular,
      ),
      subtitle: Text(
        nameUser,
        style: AppTextStyle.font16DarkGreenSemiBold,
      ),
      trailing: Image.asset(AppImages.notification),
    );
  }
}
