import 'package:auth_mobile_app/views/login_view.dart';
import 'package:auth_mobile_app/views/register_view.dart';
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
      initialRoute: LoginView.id,
      routes: {
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
      },
    );
  }
}
