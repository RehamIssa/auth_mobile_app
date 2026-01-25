import 'package:auth_mobile_app/Core/utils/secure_storage.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/user_cubit/user_cubit.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/user_cubit/user_state.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_button.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_disabled_text_form_field.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/user_profile_pic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UserFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      builder: (context, state) {
        return state is UserLoading
            ? Center(child: CircularProgressIndicator())
            : state is UserSuccess
                ? Column(
                    children: [
                      UserProfilePic(
                        imageUrl: state.user.profileImage,
                      ),
                      const Gap(80),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            Text(
                              '${state.user.firstName} ${state.user.lastName}',
                              style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const Gap(22),
                            CustomDisabledTextFormField(
                              userdata: state.user.username,
                              label: 'Username',
                            ),
                            const Gap(22),
                            CustomDisabledTextFormField(
                              userdata: state.user.email,
                              label: 'Email',
                            ),
                            const Gap(22),
                            CustomDisabledTextFormField(
                              userdata: state.user.gender,
                              label: 'Gender',
                            ),
                            const Gap(22),
                            CustomButton(
                              onPressed: () async {
                                await SecureStorage.deleteToken();
                                if (!context.mounted) return;
                                Navigator.pop(context);
                              },
                              label: 'Logout',
                              buttonColor: warningColor,
                              pressedButtonColor: warningPressedColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container();
      },
    );
  }
}
