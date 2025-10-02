import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class CustomUnderlinedText extends StatelessWidget {
  const CustomUnderlinedText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        decorationColor: primaryColor,
        decoration: TextDecoration.underline,
        decorationThickness: 1.5,
      ),
    );
  }
}
