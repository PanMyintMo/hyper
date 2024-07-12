import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/module/home_module.dart';
import 'package:hyper/module/profile_module.dart';
import 'package:hyper/route/hpyer_route.dart';
import 'package:hyper/splash_screen.dart';

class HyperModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HyperRoutes.root,
          child: (context, args) => const SplashScreen(),
        ),
        ModuleRoute(HyperRoutes.main, module: HomeModule()),
        ModuleRoute(HyperRoutes.profile, module: ProfileModule()),
      ];
}
