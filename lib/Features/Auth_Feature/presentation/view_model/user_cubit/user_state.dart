import 'package:auth_mobile_app/Features/Auth_Feature/data/models/user_model.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserSuccess extends UserState {
  final UserModel user;

  UserSuccess({required this.user});
}

class UserFailure extends UserState {
  final String errorMessage;

  UserFailure({required this.errorMessage});
}
