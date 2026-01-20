import 'package:auth_mobile_app/Core/errors/error_model.dart';
import 'package:dio/dio.dart';

class ServerException implements Exception {
  ServerException({required this.errorModel});
  final ErrorModel errorModel;
}


 void handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType
            .connectionTimeout: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType.sendTimeout: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType
            .receiveTimeout: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType
            .badCertificate: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType.cancel: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType
            .connectionError: //the request didn't reach the server
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType.unknown:
        throw ServerException(
          errorModel: ErrorModel.fromJson(e.response!.data),
        );
      case DioExceptionType
            .badResponse: //means the request reached the server but something went wrong
        switch (e.response?.statusCode) {
          case 400: //bad request
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 401: //unauthorized
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 403: //forbidden
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 404: //not found
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 409: //coefficient
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 422: //unprocessable entity
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
          case 504: //server exception
            throw ServerException(
              errorModel: ErrorModel.fromJson(e.response!.data),
            );
        }
    }
  }