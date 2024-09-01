
import 'package:flutter_web_speedrun/app/core/local_storage/local_storage.dart';
import 'package:localse';


class LocalSecureStorageImpl implements LocalSecureStorage{

// LocalSecureStorage get _instance =>  LocalSecureStorage();
// buscar o sharedpref

  

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
  
  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }
  
}