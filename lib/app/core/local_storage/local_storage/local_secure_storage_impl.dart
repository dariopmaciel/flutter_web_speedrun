import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_web_speedrun/app/core/local_storage/local_storage.dart';

class LocalSecureStorageImpl implements LocalSecureStorage {
  FlutterSecureStorage get _instance => FlutterSecureStorage();

  @override
  Future<void> clear() => _instance.deleteAll();

  @override
  Future<bool> contains(String key) => _instance.containsKey(key: key);

  @override
  Future<String?> read(String key) => _instance.read(key: key);

  @override
  Future<void> remove(String key) => _instance.delete(key: key);

  @override
  Future<void> write(String key, String valor) =>
      _instance.write(key: key, value: valor);
}
