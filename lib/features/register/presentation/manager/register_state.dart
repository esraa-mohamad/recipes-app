 class RegisterState {}
 class RegisterInitial extends RegisterState {}
 class RegisterLoading extends RegisterState {}
 class RegisterSuccess extends RegisterState {}
 class RegisterFailed extends RegisterState {
  final String message ;

  RegisterFailed({required this.message});
 }
 class RegisterChangePasswordObscure extends RegisterState {}
 class RegisterChangeConfirmPasswordObscure extends RegisterState {}

