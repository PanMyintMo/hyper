import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/util/search_filter.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HyperColor.scaffoldBKColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 3,
        title: const Text(' LOGO',
            style: TextStyle(color: HyperColor.disableBtnOneColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            hyperSearchAndFilter(context, () {}),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: AnotherCarousel(images: [
                AssetImage('assets/images/1.png'),
                AssetImage('assets/images/2.png'),
                AssetImage('assets/images/3.png'),
                AssetImage('assets/images/4.png'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
