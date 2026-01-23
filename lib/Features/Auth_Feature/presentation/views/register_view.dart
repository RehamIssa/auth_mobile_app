import 'package:auth_mobile_app/Core/api/dio_consumer.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/signup_cubit/signup_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/register_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignupCubit(DioConsumer(dio: Dio())),
        child: RegisterViewBody(),
      ),
    );
  }
}
