import 'package:another_carousel_pro/another_carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/screen/footerwidget.dart';
import 'package:hyper/screen/product_widget.dart';
import 'package:hyper/screen/profile_list_widget.dart';
import 'package:hyper/util/hyperapptextstyle.dart';
import 'package:hyper/util/hypertextstring.dart';
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
      appBar: AppBar(
        backgroundColor: HyperColor.scafoldBGColor,
        automaticallyImplyLeading: false,
        elevation: 3,
        title: const Text(HyperAppString.logo,
            style: TextStyle(color: HyperColor.logoColor)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            hyperSearchAndFilter(context, () {}),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 221,
              child: AnotherCarousel(
                boxFit: BoxFit.cover,
                images: const [
                  AssetImage('assets/images/1.png'),
                  AssetImage('assets/images/2.png'),
                  AssetImage('assets/images/3.png'),
                  AssetImage('assets/images/4.png'),
                ],
                dotSize: 6,
                indicatorBgPadding: 5.0,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            HyperAppString.top3Header,
                            style: cardDescTextStyle,
                          ),
                          const Text(
                            HyperAppString.top3subHeader,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ]),
                  )),
                  Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward_ios)))),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ProductHome(
              image: AssetImage('assets/images/6.png'),
              title: HyperAppString.proTitle1,
              description: HyperAppString.proDesc1,
              subdesc: HyperAppString.prosubDesc1,
              desc: '4.89 ',
              btnText1: HyperAppString.probtn1,
              btnText2: HyperAppString.probtn2,
              desc2: '(216)',
            ),
            const ProductHome(
              image: AssetImage('assets/images/7.png'),
              title: HyperAppString.proTitle2,
              description: HyperAppString.proDesc2,
              subdesc: HyperAppString.prosubDesc2,
              desc: '4.36',
              btnText1: HyperAppString.pro2btn1,
              btnText2: HyperAppString.pro2btn2,
              desc2: '(136) ',
            ),
            const ProductHome(
              image: AssetImage('assets/images/8.png'),
              title: HyperAppString.proTitle3,
              description: HyperAppString.proDesc3,
              subdesc: HyperAppString.prosubDesc3,
              desc: '3.98 ',
              btnText1: HyperAppString.pro3btn1,
              btnText2: HyperAppString.pro3btn2,
              desc2: '(98)',
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                HyperAppString.top10Header,
                style: TextStyle(
                    fontSize: 14, color: HyperColor.thinBlack.withOpacity(0.5)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(HyperAppString.top10subHeader),
            ),
            ProfileListWidget(),
            const SizedBox(height: 20),
            const Divider(),
            buildFooter(),
          ],
        ),
      ),
    );
  }
}
