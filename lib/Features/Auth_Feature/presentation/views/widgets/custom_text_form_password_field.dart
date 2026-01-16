import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/view_model/password_visibility_cubit/password_visibility_cubit.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormPasswordField extends StatelessWidget {
  const CustomTextFormPasswordField({
    super.key,
    required this.hintText,
    required this.label,
  });
  final String hintText;
  final String label;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordVisibilityCubit, bool>(
      builder: (context, isVisible) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyles.paragraphLight,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              obscureText: isVisible,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                suffixIconConstraints: BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      context.read<PasswordVisibilityCubit>().toggle();
                    },
                    icon: (isVisible == true)
                        ? FaIcon(
                            FontAwesomeIcons.eyeSlash,
                            color: hintsColor,
                            size: 16,
                          )
                        : FaIcon(
                            FontAwesomeIcons.eye,
                            color: hintsColor,
                            size: 16,
                          ),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: hintsColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                hintStyle: TextStyles.paragraphLight,
                hintText: hintText,
                labelStyle: TextStyles.paragraphRegular,
              ),
            ),
          ],
        );
      },
    );
  }
}
