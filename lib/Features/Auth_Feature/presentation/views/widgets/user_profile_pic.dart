import 'package:auth_mobile_app/Core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class UserProfilePic extends StatelessWidget {
  const UserProfilePic({super.key, this.imageUrl = ''});
  final String imageUrl;
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
              image: AssetImage(AppAssets.uiDesignPattern),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          bottom: -60,
          child: (imageUrl.isNotEmpty)
              ? Container(
                  height: 116,
                  width: 116,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(16, 0, 0, 0),
                        spreadRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                )
              : Image.asset(AppAssets.defaultProfileImage),
        ),
      ],
    );
  }
}
