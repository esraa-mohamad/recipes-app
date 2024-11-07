
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/shared_pref/app_prefs.dart';
import '../../../../saved_screen/presentation/manager/saved_cubit.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(LogoutInitial());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final AppPreferences appPreferences = getIt<AppPreferences>();

  static LogoutCubit get(context) => BlocProvider.of(context);
  Future<void> logout() async{
    emit(LogoutLoading());
    try {
     await _auth.signOut();
        emit(LogoutSuccess());
        appPreferences.clearUserData();
     getIt.unregister<SavedCubit>();
     getIt.registerLazySingleton<SavedCubit>(() => SavedCubit());

     // Unregister and re-register the cubit to reset it
     getIt.unregister<LogoutCubit>();
     getIt.registerLazySingleton<LogoutCubit>(() => LogoutCubit());
    } catch (error) {
      emit(LogoutFailed(error.toString()));
    }
  }
}
