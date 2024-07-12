import 'package:flutter/material.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/util/hyperapptextstyle.dart';

class ProductHome extends StatefulWidget {
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
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
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
              image: widget.image,
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
                  Text(widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: cardTitleTextStyle),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 8,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(widget.description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: cardDescTextStyle),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        size: 8,
                      ),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(widget.subdesc,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: cardDescTextStyle),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
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
                                text: widget.desc,
                                style: const TextStyle(
                                    color:
                                        HyperColor.goldColor), // Rating color
                              ),
                              TextSpan(
                                text: widget.desc2,
                                style: cardSubDescTextStyle, // Reviews color
                              ),
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: cardSubDescTextStyle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // print('Pressed: ${widget.btnText1}');
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey,
                          minimumSize: Size(20, 30),
                          backgroundColor: Colors.white, // Text color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5), // Rounded corners
                          ),
                          side: BorderSide(
                              color:
                                  Colors.grey.withOpacity(0.5)), // Border color
                          elevation: 0,
                        ),
                        child: Text(
                          widget.btnText1,
                          style: cardbtnTextStyle,
                        ),
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          // print('Pressed: ${widget.btnText2}');
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
                          widget.btnText2,
                          style: cardbtnTextStyle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
   
   
    );
 
 
  }
}
