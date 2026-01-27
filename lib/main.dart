import 'package:auth_mobile_app/Core/api/dio_consumer.dart';
import 'package:auth_mobile_app/Core/utils/secure_storage.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/checkbox_toggle_cubit/checkbox_toggle_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/user_cubit/user_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/register_view.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  //to ensure that flutter is setup and everything is initialized before running any code
  WidgetsFlutterBinding.ensureInitialized();

  //check if the users token is saved for future login
  final token = await SecureStorage.readToken();
  runApp(
    AuthMobileApp(initialRoute: token == null ? LoginView.id : ProfileView.id),
  );
}

class AuthMobileApp extends StatelessWidget {
  const AuthMobileApp({super.key, required this.initialRoute});
  final String initialRoute;
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
        BlocProvider(
          create: (context) => CheckboxToggleCubit(),
        ),
        BlocProvider(
          create: (_) => PasswordVisibilityCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: backgroundColor),
        initialRoute: initialRoute,
        routes: {
          LoginView.id: (context) => const LoginView(),
          RegisterView.id: (context) => const RegisterView(),
          ProfileView.id: (context) => const ProfileView(),
        },
      ),
    );
  }
}
