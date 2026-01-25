import 'package:auth_mobile_app/Core/api/endpoints.dart';

class UserModel {
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.gender,
    required this.profileImage,
    required this.token,
  });
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String gender;
  final String profileImage;
  final String token;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        firstName: json[ApiKeys.firstName],
        lastName: json[ApiKeys.lastName],
        email: json[ApiKeys.email],
        gender: json[ApiKeys.gender],
        username: json[ApiKeys.username],
        profileImage: json[ApiKeys.profileImage],
        token: json[ApiKeys.accessToken] ?? " ",
      );
}
