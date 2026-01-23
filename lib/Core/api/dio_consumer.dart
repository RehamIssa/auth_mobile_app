import 'package:auth_mobile_app/Core/api/api_consumer.dart';
import 'package:auth_mobile_app/Core/api/api_interceptor.dart';
import 'package:auth_mobile_app/Core/api/endpoints.dart';
import 'package:auth_mobile_app/Core/errors/exceptions.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  DioConsumer({
    required this.dio,
  }) {
    dio.options.baseUrl = Endpoints.baseUrl;
    dio.interceptors.add(
      ApiInterceptor(), //to monitor the requests and responses and send data with requests
    );
    dio.interceptors.add(
      //to monitor the requests and responses and print them in the console
      LogInterceptor(
        request: true, //print the request
        requestHeader: true, //print the requestHeader
        requestBody: true, //print the requestBody
        responseHeader: true, //print the responseHeader
        responseBody: true, //print the responseBody
        error: true, //print the error
      ),
    );
  }
  Dio dio;
  @override
  Future delete(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.delete(
        path,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(String path,
      {Object? data, Map<String, dynamic>? queryParameters,}) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}
