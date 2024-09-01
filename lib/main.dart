
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/app_module.dart';
import 'package:flutter_web_speedrun/app/app_widgets.dart';
import 'package:flutter_web_speedrun/app/core/application_config.dart';

Future<void> main() async {

await ApplicationConfig().configureApp(); 

  runApp(
    ModularApp(
      module: AppModule(),
      child:  const AppWidget()
    ),
  );
}

