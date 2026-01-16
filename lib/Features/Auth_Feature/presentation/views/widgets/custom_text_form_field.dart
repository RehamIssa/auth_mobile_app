import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.label,
    required this.controller,
  });

  final String hintText;
  final String label;
  final TextEditingController controller;
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
        TextFormField(
          controller: controller,
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
                  if (controller.text.isNotEmpty) {
                    controller.clear();
                  }
                },
                icon: FaIcon(
                  FontAwesomeIcons.circleXmark,
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
  }
}
