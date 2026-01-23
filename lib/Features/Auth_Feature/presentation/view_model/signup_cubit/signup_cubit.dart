import 'package:auth_mobile_app/Core/api/api_consumer.dart';
import 'package:auth_mobile_app/Core/api/endpoints.dart';
import 'package:auth_mobile_app/Core/errors/exceptions.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/signup_cubit/signup_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.api) : super(SignupInitial());

  final ApiConsumer api;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signup() {
    emit(SignupLoading());
    try {
      api.post(Endpoints.signup, data: {
        ApiKeys.username: usernameController.text,
        ApiKeys.email: emailController.text,
        ApiKeys.password: passwordController.text,
      });
      emit(SignupSuccess());
    } on ServerException catch (e) {
      emit(SignupFailed(errorMessage: e.errorModel.errorMessage));
    }
  }
}
