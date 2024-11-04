
import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/helper/app_images.dart';

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
        style: TextStyle(),
      ),
      subtitle: Text(
        'Fatma Atef',
        style: TextStyle(),
      ),
      trailing: Image.asset(AppImages.notification),
    );
  }
}
