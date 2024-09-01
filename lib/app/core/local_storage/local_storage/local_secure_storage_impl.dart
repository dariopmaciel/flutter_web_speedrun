import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_speedrun/app/core/local_storage/local_storage.dart';

class LocalSecureStorageImpl implements LocalSecureStorage {
  FlutterSecureStorage get _instance => FlutterSecureStorage();

  @override
  Future<void> clear() =>

  @override
  Future<bool> contains(String key) {
    // TODO: implement contains
    throw UnimplementedError();
  }

  @override
  Future<String?> read(String key) {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<void> remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future<void> write(String key, String valor) {
    // TODO: implement write
    throw UnimplementedError();
  }
}
