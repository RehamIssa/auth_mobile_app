import 'package:auth_mobile_app/Core/api/endpoints.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final storage = FlutterSecureStorage();

  static Future<void> writeToken(String token) async {
    await SecureStorage.storage.write(key: ApiKeys.accessToken, value: token);
  }

  static Future<String?> readToken() {
    return SecureStorage.storage.read(key: ApiKeys.accessToken);
  }

  static deleteToken() async {
    await storage.delete(key: ApiKeys.accessToken);
  }
}
