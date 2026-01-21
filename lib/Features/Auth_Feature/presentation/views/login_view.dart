import 'package:auth_mobile_app/Core/api/dio_consumer.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/login-view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(DioConsumer(dio: Dio())),
        child: LoginViewBody(),
      ),
    );
  }
}
