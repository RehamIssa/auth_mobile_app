import 'package:auth_mobile_app/Core/api/dio_consumer.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/user_cubit/user_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/register_view.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const AuthMobileApp());
}

class AuthMobileApp extends StatelessWidget {
  const AuthMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(DioConsumer(dio: Dio())),
        ),
        BlocProvider(
          create: (context) => UserCubit(DioConsumer(dio: Dio())),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: backgroundColor),
        initialRoute: RegisterView.id,
        routes: {
          LoginView.id: (context) => const LoginView(),
          RegisterView.id: (context) => const RegisterView(),
          ProfileView.id: (context) => const ProfileView(),
        },
      ),
    );
  }
}
