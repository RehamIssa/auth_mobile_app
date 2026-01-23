import 'package:auth_mobile_app/Core/api/endpoints.dart';

class ErrorModel {
  ErrorModel({
    // required this.status,
    required this.errorMessage,
  });
  // final int status;
  final String errorMessage;

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
        //status: jsonData[ApiKeys.status],
        errorMessage: jsonData[ApiKeys.errorMessage]);
  }
}
