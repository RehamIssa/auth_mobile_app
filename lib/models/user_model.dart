class UserModel {
  UserModel(this.email, this.gender, {required this.username, required this.password});

  final String username;
  final String password;
  final String email;
  final String gender; 

}
