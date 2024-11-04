import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/widgets/custom_elevated_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButton(
          onPressed: (){},
        textButton: 'Sign Up',
      ),
    );
  }
}
