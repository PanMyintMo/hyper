import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/module/home_module.dart';
import 'package:hyper/module/profile_module.dart';
import 'package:hyper/route/hpyer_route.dart';
import 'package:hyper/util/app_logger.dart';

class AppRouter {
  static void _goToNextPage({
    required String routeName,
    Object? args,
    bool isReplace = false,
    bool isReplaceAll = false,
  }) {
    if (isReplace) {
      Modular.to.pushReplacementNamed(routeName, arguments: args);
    } else if (isReplaceAll) {
      logger.e(routeName);
      Modular.to.pushNamedAndRemoveUntil(
        routeName,
        (Route<dynamic> route) => false,
        arguments: args,
      );
    } else {
      Modular.to.pushNamed(routeName, arguments: args);
    }
  }

  static void changeRoute<M extends Module>(
    String routes, {
    Object? args,
    bool? isReplace,
    bool? isReplaceAll,
    List<String>? interests,
  }) {
    String tempRoute = "";

    switch (M) {
      case const (HomeModule):
        tempRoute = HyperRoutes.main;
        break;
      case const (ProfileModule):
        tempRoute = HyperRoutes.profile;
        break;
    }
    logger.e(tempRoute);
    logger.e("$tempRoute$routes");

    _goToNextPage(
      routeName: "$tempRoute$routes",
      args: args,
      isReplace: isReplace ?? false,
      isReplaceAll: isReplaceAll ?? false,
    );
  }
}
