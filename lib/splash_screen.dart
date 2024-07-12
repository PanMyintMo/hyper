import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/module/home_module.dart';
import 'package:hyper/route/app_router.dart';
import 'package:hyper/route/home_route.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      AppRouter.changeRoute<HomeModule>(HomeRoutes.root);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HyperColor.gardientOne,
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Lottie.asset(
              'assets/icons/hyper.json',
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
