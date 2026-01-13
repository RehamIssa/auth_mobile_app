import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/register_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_checkbox.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_input_field.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_underlined_text.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          const Text(
            'Log in to your account',
            style: TextStyles.header3,
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
                  hint: 'Enter your username',
                  icon: FontAwesomeIcons.circleXmark,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomInputField(
                  obscureText: false,
                  label: 'Password',
                  hint: 'Enter your password',
                  icon: FontAwesomeIcons.eyeSlash,
                ),
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
                      CustomButton(
                        label: 'Login',
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Don’t have an account? ',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, RegisterView.id);
                            },
                            child: CustomUnderlinedText(text: 'Register'),
                          ),
                        ],
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
