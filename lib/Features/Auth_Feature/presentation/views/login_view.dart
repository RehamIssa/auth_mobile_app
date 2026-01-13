import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/login_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: LoginBody(),
    );
  }
}
