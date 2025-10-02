import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: Checkbox(
              side: BorderSide(
                color: hintsColor,
              ),
              value: false,
              onChanged: (isChecked) {}),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          'Remember me',
          style: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
