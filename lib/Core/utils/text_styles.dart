import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static const header3 = TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  static const paragraphLight = TextStyle(
    color: hintsColor,
    fontSize: 14,
  );

  static const paragraphRegular = TextStyle(
    color: textColor,
    fontSize: 14,
  );

  static const paragraphBold = TextStyle(
    color: textColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
