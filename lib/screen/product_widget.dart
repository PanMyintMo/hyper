import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/util/hyperapptextstyle.dart';

class ProductHome extends StatelessWidget {
  final AssetImage image;
  final String title;
  final String description;
  final String subdesc;
  final String desc;
  final String desc2;
  final String btnText1;
  final String btnText2;

  const ProductHome({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.subdesc,
    required this.desc,
    required this.desc2,
    required this.btnText1,
    required this.btnText2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: HyperColor.scafoldBGColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image(
              image: image,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildText(title, style: cardTitleTextStyle),
                  const SizedBox(height: 2),
                  _buildInfoRow(description),
                  const SizedBox(height: 4),
                  _buildInfoRow(subdesc),
                  const SizedBox(height: 4),
                  _buildRatingRow(),
                  const SizedBox(height: 2),
                  _buildButtonRow(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String text, {TextStyle? style}) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }

  Widget _buildInfoRow(String text) {
    return Row(
      children: [
        const Icon(
          Icons.fiber_manual_record,
          size: 8,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: _buildText(text, style: cardDescTextStyle),
        ),
      ],
    );
  }

  Widget _buildRatingRow() {
    return Row(
      children: [
        const Icon(
          Icons.fiber_manual_record,
          size: 8,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: '⭐',
                ),
                TextSpan(
                  text: desc,
                  style: const TextStyle(color: HyperColor.goldColor),
                ),
                TextSpan(
                  text: desc2,
                  style: cardSubDescTextStyle,
                ),
              ],
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: cardSubDescTextStyle,
          ),
        ),
      ],
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.grey,
        minimumSize: const Size(20, 30),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: BorderSide(color: Colors.grey.withOpacity(0.5)),
        elevation: 0,
      ),
      child: Text(
        text,
        style: cardbtnTextStyle,
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      children: [
        _buildButton(btnText1),
        const SizedBox(width: 5),
        _buildButton(btnText2),
      ],
    );
  }
}
