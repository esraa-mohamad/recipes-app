
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<User?> loginWithEmailAndPassword() async{
    emit(LoginLoading());
    try {
      UserCredential userCredential =await _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      if(userCredential.user ==null){
        emit(LoginFailed(message: "Not valid email or password"));

      }else {
        emit(LoginSuccess());
      }
      return userCredential.user;
    }catch(error){
      emit(LoginFailed(message: error.toString()));
    }
    return null;
  }
  bool isPasswordObscure = false ;
  void passwordObscureChange(){
    isPasswordObscure = !isPasswordObscure;
    emit(LoginChangePasswordObscure());
  }

  void logOut(){
    _auth.signOut();
  }
}
