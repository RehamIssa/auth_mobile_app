import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_checkbox.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_input_field.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_underlined_text.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          UserProfilePic(),
          SizedBox(
            height: 80,
          ),
          Text(
            'Create new account',
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
                  label: 'Username',
                  hint: 'Enter your username',
                  icon: FontAwesomeIcons.circleXmark,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomInputField(
                  label: 'Email',
                  hint: 'Enter your email',
                  icon: FontAwesomeIcons.circleXmark,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomInputField(
                  label: 'Password',
                  hint: 'Enter your password',
                  icon: FontAwesomeIcons.eyeSlash,
                  obscureText: false,
                ),
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(),
                    CustomUnderlinedText(text: 'Have a problem?'),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                CustomButton(
                  label: 'Register',
                ),
                SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginView.id);
                      },
                      child: CustomUnderlinedText(text: 'Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
