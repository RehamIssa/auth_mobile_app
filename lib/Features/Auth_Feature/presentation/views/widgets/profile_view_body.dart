import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/login_view.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_disabled_text_form_field.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserProfilePic(),
        const Gap(80),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                'Ahmed Saber',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Gap(22),
              CustomDisabledTextFormField(
                userdata: 'ahmed0saber',
                label: 'Username',
              ),
              const Gap(22),
              CustomDisabledTextFormField(
                userdata: 'ahmed0saber33@gmail.com',
                label: 'Email',
              ),
              const Gap(22),
              CustomDisabledTextFormField(
                userdata: 'Male',
                label: 'Gender',
              ),
              const Gap(22),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoginView.id);
                },
                label: 'Logout',
                buttonColor: warningColor,
                pressedButtonColor: warningPressedColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
