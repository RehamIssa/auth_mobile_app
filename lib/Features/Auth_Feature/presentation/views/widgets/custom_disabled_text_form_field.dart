import 'package:auth_mobile_app/Core/utils/text_styles.dart';
import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDisabledTextFormField extends StatelessWidget {
  const CustomDisabledTextFormField({
    super.key,
    required this.userdata,
    required this.label,
  });

  final String userdata;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.paragraphLight,
        ),
        const Gap(8),
        TextFormField(
          enabled: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: hintsColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            hintStyle: TextStyles.paragraphRegular,
            hintText: userdata,
            labelStyle: TextStyles.paragraphRegular,
          ),
        ),
      ],
    );
  }
}
