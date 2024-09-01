import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroments {
  Enviroments._();

  static String? param(String paramName) {
    //verificando se a plataforma está correta
    if (kReleaseMode) {
      // return SERVIDOR.instance.getString(paramName);
    } else {
      return dotenv.env[paramName];
    }
  }

  static Future<void> loadEnvs() async {
    //
    if (kReleaseMode) {
      //fazer conexão com a instancia desejada
    }else{
      await dotenv.load(fileName: '.env');
    }
  }
}
