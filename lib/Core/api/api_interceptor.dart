import 'package:auth_mobile_app/Core/utils/secure_storage.dart';
import 'package:dio/dio.dart';

/*
  This is a class that inhertance of the Interceptor class that
  provides methods for monitoring the requests and responses and send data with requests
 */
class ApiInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await SecureStorage.readToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    super.onRequest(options, handler);
  }
}
