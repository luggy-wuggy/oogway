import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const String accountUid = 'account-uuid';

  static const _storage = FlutterSecureStorage();

  static Future<void> writeSecureData(String key, String value) async {
    var writeData = await _storage.write(key: key, value: value);
    return writeData;
  }

  static Future<String?> readSecureData(String key) async {
    var readData = await _storage.read(key: key);
    return readData;
  }

  static Future<bool> containsKey(String key) async {
    return await _storage.containsKey(key: key);
  }

  static Future<void> deleteSecureData(String key) async {
    var deleteData = await _storage.delete(key: key);
    return deleteData;
  }

  static Future<void> deleteSecureDataList(dynamic keys) async {
    for (var key in keys) {
      await _storage.delete(key: key);
    }
  }

  static Future<void> deleteAllSecureData() async {
    await _storage.deleteAll();
  }
}
