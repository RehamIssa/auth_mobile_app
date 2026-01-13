import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/register_view.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AuthMobileApp());
}

class AuthMobileApp extends StatelessWidget {
  const AuthMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: backgroundColor),
      initialRoute: RegisterView.id,
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
        ProfileView.id: (context) => const ProfileView(),
      },
    );
  }
}
