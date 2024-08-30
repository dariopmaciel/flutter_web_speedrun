import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/modules/home/home_page.dart';

class HomeMdule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (_)=>HomePage());
  }

}
