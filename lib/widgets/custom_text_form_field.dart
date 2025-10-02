import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    required this.hintText,
    required this.icon,
  });
  final bool obscureText;
  final String hintText;
  final FaIcon icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      cursorColor: primaryColor,
      decoration: InputDecoration(
        suffixIconConstraints: BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
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
        hintStyle: TextStyle(
          color: hintsColor,
          fontSize: 14,
        ),
        hintText: hintText,
      ),
    );
  }
}
