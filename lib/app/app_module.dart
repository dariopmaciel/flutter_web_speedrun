

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/modules/home/home_mdule.dart';
import 'package:flutter_web_speedrun/app/modules/login/login_module.dart';
import 'package:flutter_web_speedrun/app/modules/register/register_module.dart';

class AppModule extends Module {
  


@override
  void routes(RouteManager r) {
    r.module('/', module: LoginModule());
    r.module('/home/', module: HomeMdule());
    r.module('/register/', module: RegisterModule());
    
  }

}
