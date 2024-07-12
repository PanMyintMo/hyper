import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/util/custom_drop_down.dart';
import 'package:hyper/util/hyperapptextstyle.dart';
import 'package:hyper/util/hypertextstring.dart';

Widget buildFooter() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    color: HyperColor.grey.withOpacity(0.2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'LOGO Inc.',
          style: logoTextStyle,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              HyperAppString.ftone,
              style: footerTextStyle,
            ),
            Text(
              HyperAppString.fttwo,
              style: footerTextStyle,
            ),
            Text(
              HyperAppString.ftthree,
              style: footerTextStyle,
            ),
            Text(
              HyperAppString.fttfour,
              style: footerTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/vector.png',
                  width: 25,
                  height: 25,
                ),
                Text(
                  HyperAppString.reviewText,
                  style: reviewTextStyle,
                ),
              ],
            ),
            const CustomDropdownButton(
              text: 'KOR',
              value: 'KOR',
            )
          ],
        ),
        const Divider(),
        const SizedBox(height: 10),
        Text(
          HyperAppString.footer,
          style: footerTextStyle,
        ),
        const SizedBox(height: 10),
      ],
    ),
  );
}
