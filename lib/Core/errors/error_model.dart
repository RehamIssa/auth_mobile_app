class ErrorModel {
  ErrorModel({required this.status, required this.errorMessage});
  final int status;
  final String errorMessage;

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(status: jsonData['status'], errorMessage: jsonData['errorMessage']);
  }
}
