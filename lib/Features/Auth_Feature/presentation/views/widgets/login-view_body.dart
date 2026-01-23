import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/checkbox_toggle_cubit/checkbox_toggle_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/login_cubit/login_state.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/profile_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/register_view.dart';
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

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Success')));
            Navigator.pushNamed(context, ProfileView.id);
          } else if (state is LoginFailedState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errorMessage)));
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              UserProfilePic(),
              const Gap(80),
              Text(
                'Log in to your account',
                style: TextStyles.header3,
              ),
              const Gap(22),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        hintText: 'Enter your username',
                        label: 'Username',
                        controller:
                            context.read<LoginCubit>().usernameController,
                      ),
                      const Gap(22),
                      BlocProvider(
                        create: (_) => PasswordVisibilityCubit(),
                        child: CustomTextFormPasswordField(
                          controller:
                              context.read<LoginCubit>().passwordController,
                          hintText: 'Enter your password',
                          label: 'Password',
                        ),
                      ),
                      const Gap(22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BlocProvider(
                            create: (context) => CheckboxToggleCubit(),
                            child: CustomCheckbox(),
                          ),
                          CustomUnderlinedText(text: 'Forgot password?'),
                        ],
                      ),
                      const Gap(22),
                      state is LoginLoadingState
                          ? LoadingButton(
                              primary: primaryColor,
                              pressedButtonColor: primaryPressedColor,
                            )
                          : CustomButton(
                              label: 'Login',
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  context.read<LoginCubit>().signin();
                                }
                              },
                            ),
                      const Gap(22),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              color: textColor,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(6),
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
              ),
            ],
          );
        },
      ),
    );
  }
}

