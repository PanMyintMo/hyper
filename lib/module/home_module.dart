import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/route/home_route.dart';
import 'package:hyper/screen/hpyerpage_screen.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(HomeRoutes.root,
            child: (context, args) => const HyperPageScreen()),
      ];
}
