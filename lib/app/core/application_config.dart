import 'package:flutter/material.dart';
import 'package:flutter_web_speedrun/app/core/helpers/enviroments.dart';

class ApplicationConfig {
  Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await CONFIGURAÇÃO DE SERVIDOR
    await _loadEnvs();
  }

  // Future<void> CONFIGURAÇÃO DE SERVIDOR() {
  // inicializando SERVIDOR para a plataforma atual
  // }
  
  Future<void> _loadEnvs() => Enviroments.loadEnvs();
}
