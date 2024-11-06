
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_book_app/features/register/presentation/manager/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<User?> registerWithEmailAndPassword() async{
    emit(RegisterLoading());
    try {
      UserCredential userCredential =await _auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      if(userCredential.user ==null){
        emit(RegisterFailed(message: "Failed to register"));
      }else {
        emit(RegisterSuccess());
      }
      return userCredential.user;
    }catch(error){
      emit(RegisterFailed(message: error.toString()));
    }
    return null;
  }

  bool isPasswordObscure = false ;
  void passwordObscureChange(){
    isPasswordObscure = !isPasswordObscure;
    emit(RegisterChangePasswordObscure());
  }

  bool isConfirmPasswordObscure = false ;
  void confirmPasswordObscureChange(){
    isConfirmPasswordObscure = !isConfirmPasswordObscure;
    emit(RegisterChangeConfirmPasswordObscure());
  }

  // Dispose controllers
  void disposeControllers() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Future<void> close() {
    disposeControllers();
    return super.close();
  }
}
