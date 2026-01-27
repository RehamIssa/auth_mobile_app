import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/signup_cubit/signup_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/signup_cubit/signup_state.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_checkbox.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_loading_button.dart';
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

  final GlobalKey<FormState> signupFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Signup is successful!')));
            Navigator.pop(context);
          } else if (state is SignupFailed) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        builder: (context, state) {
          return Column(
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
                child: Form(
                  key: signupFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        hintText: 'Enter your username',
                        label: 'Username',
                        controller:
                            context.read<SignupCubit>().usernameController,
                      ),
                      const Gap(22),
                      CustomTextFormField(
                        hintText: 'Enter your email',
                        label: 'Email',
                        controller: context.read<SignupCubit>().emailController,
                      ),
                      const Gap(22),
                      CustomTextFormPasswordField(
                        controller:
                            context.read<SignupCubit>().passwordController,
                        hintText: 'Enter your password',
                        label: 'Password',
                      ),
                      const Gap(22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCheckbox(),
                          CustomUnderlinedText(text: 'Have a problem?'),
                        ],
                      ),
                      const Gap(22),
                      const Gap(22),
                      (state is SignupLoading)
                          ? LoadingButton(
                              primary: primaryColor,
                              pressedButtonColor: primaryPressedColor)
                          : CustomButton(
                              label: 'Register',
                              onPressed: () {
                                if (signupFormKey.currentState!.validate()) {
                                  context.read<SignupCubit>().signup();
                                }
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
              ),
            ],
          );
        },
      ),
    );
  }
}
