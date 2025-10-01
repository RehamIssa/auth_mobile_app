import 'package:auth_mobile_app/constants.dart';
import 'package:flutter/material.dart';

class UserProfilePic extends StatelessWidget {
  const UserProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(patternPic),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          bottom: -60,
          child: Image.asset(defaultUserProfilePic),
        ),
      ],
    );
  }
}
