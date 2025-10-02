import 'package:auth_mobile_app/constants.dart';
import 'package:auth_mobile_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Username',
            style: TextStyle(color: hintsColor, fontSize: 14),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
            hintText: 'Username',
            icon: FaIcon(
              FontAwesomeIcons.circleXmark,
              color: hintsColor,
              size: 16,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Text(
            'Passowrd',
            style: TextStyle(color: hintsColor, fontSize: 14),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
            obscureText: true,
            hintText: 'password',
            icon: FaIcon(
              FontAwesomeIcons.eyeSlash,
              color: hintsColor,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
