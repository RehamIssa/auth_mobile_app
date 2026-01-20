import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/checkbox_toggle_cubit/checkbox_toggle_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_checkbox.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_text_form_field.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_text_form_password_field.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_underlined_text.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({super.key});
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
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
                CustomTextFormField(
                  hintText: 'Enter your username',
                  label: 'Username',
                  controller: usernameController,
                ),
                const Gap(22),
                CustomTextFormField(
                  hintText: 'Enter your email',
                  label: 'Email',
                  controller: usernameController,
                ),
                const Gap(22),
                // BlocProvider(
                //   create: (_) => PasswordVisibilityCubit(),
                //   child: CustomTextFormPasswordField(
                //     hintText: 'Enter your password',
                //     label: 'Password',
                //   ),
                // ),
                const Gap(22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocProvider(
                      create: (context) => CheckboxToggleCubit(),
                      child: CustomCheckbox(),
                    ),
                    CustomUnderlinedText(text: 'Have a problem?'),
                  ],
                ),
                const Gap(22),
                const Gap(22),
                CustomButton(
                  label: 'Register',
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileView.id);
                  },
                ),
                const Gap(22),
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
                    const Gap(6),
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
