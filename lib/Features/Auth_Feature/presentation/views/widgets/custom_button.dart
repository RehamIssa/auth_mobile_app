import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onPressed,
    this.buttonColor,
    this.pressedButtonColor,
  });
  final String label;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color? pressedButtonColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll<double>(0),
          shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return (pressedButtonColor == null)
                    ? primaryPressedColor
                    : pressedButtonColor;
              }
              return (buttonColor == null) ? primaryColor : buttonColor;
            },
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
