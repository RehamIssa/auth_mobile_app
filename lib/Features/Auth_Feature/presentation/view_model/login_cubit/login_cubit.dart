import 'package:auth_mobile_app/Core/api/api_consumer.dart';
import 'package:auth_mobile_app/Core/api/endpoints.dart';
import 'package:auth_mobile_app/Core/errors/exceptions.dart';
import 'package:auth_mobile_app/Core/utils/secure_storage.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/data/models/user_model.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    this.api,
  ) : super(LoginInitialState());
  final ApiConsumer api;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  UserModel? user;
  void signin() async {
    emit(LoginLoadingState());
    try {
      final response = await api.post(Endpoints.login, data: {
        ApiKeys.username: usernameController.text,
        ApiKeys.password: passwordController.text,
      });

      user = UserModel.fromJson(response);
      await SecureStorage.writeToken(user!.token);
      emit(LoginSuccessState());
    } on ServerException catch (e) {
      emit(
        LoginFailedState(
          errorMessage: e.errorModel.errorMessage,
        ),
      );
    }
  }
}
