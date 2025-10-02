import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/widgets/custom_button.dart';
import 'package:auth_mobile_app/widgets/custom_checkbox.dart';
import 'package:auth_mobile_app/widgets/input_form.dart';
import 'package:auth_mobile_app/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          InputForm(),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    CustomUnderlinedText(text: 'Forgot password?'),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomButton(),
                const SizedBox(
                  height: 22,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decorationColor: primaryColor,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomUnderlinedText extends StatelessWidget {
  const CustomUnderlinedText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        decorationColor: primaryColor,
        decoration: TextDecoration.underline,
        decorationThickness: 1.5,
      ),
    );
  }
}
