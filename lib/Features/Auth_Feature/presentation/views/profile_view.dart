import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static String id = 'ProfileView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          UserProfilePic(),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Ahmed Saber',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
