import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/colors/hpercolor.dart';

class Hyper extends StatelessWidget {
  const Hyper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        return EasyLoading.init()(context, child);
      },
      debugShowCheckedModeBanner: false,
      title: 'Hyper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.accent),
        primaryColor: HyperColor.scafoldBGColor,
        fontFamily: 'Gilroy',
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
