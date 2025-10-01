import 'package:auth_mobile_app/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserProfilePic(),
      ],
    );
  }
}
