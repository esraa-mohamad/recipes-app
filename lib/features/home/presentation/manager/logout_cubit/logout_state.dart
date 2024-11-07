class LogoutState {}

 class LogoutInitial extends LogoutState {}
 class LogoutLoading extends LogoutState {}
 class LogoutSuccess extends LogoutState {}
 class LogoutFailed extends LogoutState {
  final String error ;

  LogoutFailed(this.error);
 }
