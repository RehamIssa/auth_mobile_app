import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    super.key,
    required this.primary,
    required this.pressedButtonColor,
  });
  final Color primary;
  final Color pressedButtonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: pressedButtonColor),
      child: Center(
        child: SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(
            color: primary,
          ),
        ),
      ),
    );
  }
}