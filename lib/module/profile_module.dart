import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/route/profile_route.dart';
import 'package:hyper/screen/profilepage.dart';

class ProfileModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(ProfileRoutes.root,
            child: (context, args) => ProfilePage(profileArg: args.data)),
      ];
}
