
import 'package:flutter/material.dart';
import 'package:recipes_book_app/features/login/presentation/manager/login_cubit.dart';

import '../../../../../core/widgets/custom_elevated_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButton(
          onPressed: (){
            validateThenLogin(context);
          },
      ),
    );
  }


  void validateThenLogin(BuildContext context)async{
    var loginCubit = LoginCubit.get(context);
    if(loginCubit.formKey.currentState!.validate()){
      loginCubit.loginWithEmailAndPassword();
    }
  }
}
