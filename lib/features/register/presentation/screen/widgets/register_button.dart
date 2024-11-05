import 'package:flutter/material.dart';
import 'package:recipes_book_app/core/widgets/custom_elevated_button.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_cubit.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomElevatedButton(
          onPressed: (){
            validateThenRegister(context);
          },
        textButton: 'Sign Up',
      ),
    );
  }

  void validateThenRegister(BuildContext context)async{
    var registerCubit = RegisterCubit.get(context);
    if(registerCubit.formKey.currentState!.validate()){
      registerCubit.registerWithEmailAndPassword();
    }
  }
}
