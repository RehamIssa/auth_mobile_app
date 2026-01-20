import 'package:auth_mobile_app/Core/api/api_consumer.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.api) : super(LoginInitialState());
  final ApiConsumer api;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signin() async {
    emit(LoginLoadingState());
    try {
      // Response response =
      //     await api.post(
      // //   'https://dummyjson.com/auth/login', data: {
      // //   'username': usernameController.text,
      // //   'password': passwordController.text,
      // // }
      // );
      emit(LoginSuccessState());
      // print(response);
    } catch (e) {
      print(e.toString());
      emit(LoginFailedState(errorMessage: e.toString()));
    }
  }
}
