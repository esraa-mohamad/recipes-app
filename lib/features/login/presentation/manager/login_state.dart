 import 'package:firebase_auth/firebase_auth.dart';

class LoginState {}

 class LoginInitial extends LoginState {}
 class LoginLoading extends LoginState {}
 class LoginSuccess extends LoginState {
 final User? user;

  LoginSuccess(this.user);
 }
 class LoginFailed extends LoginState {
  final String message ;

  LoginFailed({required this.message});
 }
 class LoginChangePasswordObscure extends LoginState {}
