import 'package:auth_mobile_app/Core/api/endpoints.dart';

class ErrorModel {
  ErrorModel({
    required this.errorMessage,
  });

  final String errorMessage;

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(errorMessage: jsonData[ApiKeys.errorMessage]);
  }
}
