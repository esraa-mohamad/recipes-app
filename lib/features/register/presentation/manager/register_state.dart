 import 'package:firebase_auth/firebase_auth.dart';

class RegisterState {}
 class RegisterInitial extends RegisterState {}
 class RegisterLoading extends RegisterState {}
 class RegisterSuccess extends RegisterState {
 final User user;

  RegisterSuccess(this.user);
 }
 class RegisterFailed extends RegisterState {
  final String message ;

  RegisterFailed({required this.message});
 }
 class RegisterChangePasswordObscure extends RegisterState {}
 class RegisterChangeConfirmPasswordObscure extends RegisterState {}

