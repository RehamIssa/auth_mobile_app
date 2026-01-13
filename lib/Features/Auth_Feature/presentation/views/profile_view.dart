import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_input_field.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            'Log in to your account',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomInputField(
                  obscureText: false,
                  label: 'Username',
                  hint: 'ahmed0saber',
                  icon: FontAwesomeIcons.circleXmark,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomInputField(
                  obscureText: false,
                  label: 'Email',
                  hint: 'ahmed0saber33@gmail.com',
                  icon: FontAwesomeIcons.eyeSlash,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomInputField(
                  obscureText: false,
                  label: 'Gender',
                  hint: 'Male',
                  icon: FontAwesomeIcons.eyeSlash,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomButton(
                  color: Color(0xffDC3545),
                  label: 'Login',
                ),
                const SizedBox(
                  height: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
