import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hyper/hyper.dart';
import 'package:hyper/module/hypermodule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: HyperModule(), child: const Hyper()));
}
