import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/Features/Auth_Feature/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key, required this.label, required this.hint, required this.icon, required this.obscureText});
  final String label;
  final String hint;
  final IconData icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
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
        CustomTextFormField(
          obscureText: true,
          hintText: hint,
          icon: FaIcon(
            icon,
            color: hintsColor,
            size: 16,
          ),
        ),
      ],
    );
  }
}
