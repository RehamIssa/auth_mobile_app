import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key, required this.label, required this.hint, required this.icon});
  final String label;
  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: hintsColor, fontSize: 14),
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
