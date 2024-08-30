import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/modules/register/register_page.dart';

class RegisterModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_) => RegisterPage());
  }
}
