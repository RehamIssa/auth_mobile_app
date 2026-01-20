class UserModel {
  UserModel({
    required this.username,
    required this.password,
    required this.email,
    required this.gender,
  });

  final String username;
  final String password;
  final String email;
  final String gender;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      email: json['email'],
      gender: json['gender'],
      username: json['username'],
      password: json['password']);
}
