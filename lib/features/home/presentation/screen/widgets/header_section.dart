import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';
import 'package:recipes_book_app/core/theme/app_text_style.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppImages.profile),
      title: Text(
        'Welcome, 👋🏻',
        style: AppTextStyle.font16SlateGrayLight,
      ),
      subtitle: Text(
        'Fatma Atef',
        style: AppTextStyle.font16DarkGreenSemiBold,
      ),
      trailing: Image.asset(AppImages.notification),
    );
  }
}
