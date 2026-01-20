import 'package:auth_mobile_app/Features/Auth_Feature/data/models/user_model.dart';

abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  // final UserModel user;
  // LoginSuccessState({required this.user});
}

class LoginFailedState extends LoginState {
  final String errorMessage;
  LoginFailedState({required this.errorMessage});
}
