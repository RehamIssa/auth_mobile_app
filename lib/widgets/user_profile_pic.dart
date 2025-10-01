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
              image: AssetImage('assets/images/pattern.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
            bottom: -60,
            child: Image.asset('assets/images/default_profile_image.png')),
      ],
    );
  }
}
