import 'package:flutter_web_speedrun/app/core/local_storage/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';



class LocalStorageImpl implements LocalStorage {

  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();

  @override
  Future<void> clear() async {
    final sharedPreferences = await _instance;
    sharedPreferences.clear();
  }

  @override
  Future<bool> contains(String key) async {
    final sharedPreferences = await _instance;
    return sharedPreferences.containsKey(key);
  }

  @override
  Future<V?> read<V>(String key) async {
    final sharedPreferences = await _instance;
    return sharedPreferences.get(key) as V?;
  }

  @override
  Future<void> remove(String key) async {
    final sharedPreferences = await _instance;
    sharedPreferences.remove(key);
  }

  @override
  Future<void> write<V>(String key, V valor) async {
    final sharedPreferences = await _instance;

    switch (V) {
      case const (String):
        await sharedPreferences.setString(key, valor as String);
        break;
      case const (int):
        await sharedPreferences.setInt(key, valor as int);
        break;
      case const (bool):
        await sharedPreferences.setBool(key, valor as bool);
        break;
      case const (double):
        await sharedPreferences.setDouble(key, valor as double);
        break;
      case const (List):
        await sharedPreferences.setStringList(key, valor as List<String>);
        break;
      default:
        throw Exception("Type not suported");
    }
  }
}