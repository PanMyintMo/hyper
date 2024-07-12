import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hyper/colors/hpercolor.dart';
import 'package:hyper/util/custom_drop_down.dart';
import 'package:hyper/util/hyperapptextstyle.dart';

class ProfileArg {
  final String name;
  final String image;
  final bool isSpecial;

  ProfileArg({
    required this.name,
    required this.image,
    required this.isSpecial,
  });
}

class ProfilePage extends StatelessWidget {
  final ProfileArg profileArg;

  const ProfilePage({
    super.key,
    required this.profileArg,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: profileArg.isSpecial
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      '랭킹 1위',
                      style: TextStyle(
                        color: HyperColor.thinBlack.withOpacity(0.3),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Center(child: Text('베스트 리뷰어', style: appBarTitleStyle)),
                ],
              )
            : Text(profileArg.name, style: appBarTitleStyle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: profileArg.isSpecial
                  ? const AssetImage('assets/proimages/pp.png')
                  : AssetImage(profileArg.image),
            ),
            const SizedBox(height: 10),
            profileArg.isSpecial
                ? Column(
                    children: [
                      Text(
                        profileArg.name,
                        style: appBarTitleStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        ' ⭐골드',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: HyperColor.thinBlack.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('조립컴 업체를 운영하며 리뷰를 작성합니다.',
                              style: cardDescTextStyle),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                : Text(profileArg.name, style: appBarTitleStyle),
            const SizedBox(height: 5),
            const SizedBox(height: 20),
            Divider(
              thickness: 20,
              color: HyperColor.grey.withOpacity(0.1),
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('작성한 리뷰'),
                        Text(
                          '총 35개',
                          style: cardSubDescTextStyle,
                        ),
                      ],
                    ),
                    const CustomDropdownButton(
                      text: '최신순',
                      value: '최신순',
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '작성한 리뷰',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  _buildReviewItem(
                    context,
                    'AMD 라이젠5 5600X 에이서 ',
                    '정품 멀티팩',
                    '⭐⭐⭐⭐ 4.07',
                    'assets/proimages/pro11.png',
                  ),
                  const Divider(),
                  _buildReviewFromImage(context, profileArg),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReviewFromImage(BuildContext context, ProfileArg profileArg) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(profileArg.image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profileArg.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 14),
                    Text('4.89(216)', style: TextStyle(color: Colors.black)),
                    SizedBox(width: 5),
                    Text('2022.12.09', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.bookmark_border),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('"가격 저렴해요"', style: cardbtnTextStyle),
            Text('"CPU온도 고온"', style: cardbtnTextStyle),
            Text('"서멀작업 가능해요"', style: cardbtnTextStyle),
            Text('"게임 잘 돌아가요"', style: cardbtnTextStyle)
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Image.asset(
              'assets/images/flash.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                style: profileBodyTextStyle,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Image.asset(
              'assets/images/flash2.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Text(
                '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                style: profileBodyTextStyle,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/images/pos1.png', width: 101, height: 75),
            Image.asset('assets/images/pos2.png', width: 101, height: 75),
            Image.asset('assets/images/pos3.png', width: 101, height: 75),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(
              FontAwesomeIcons.commentDots,
              color: HyperColor.grey,
              size: 20,
            ),
            Text(
              '댓글 달기..',
              style: footerTextStyle,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildReviewItem(BuildContext context, String title, String desc,
      String rating, String image) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: HyperColor.scafoldBGColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(flex: 2, child: Image.asset(image, fit: BoxFit.contain)),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: cardTitleTextStyle),
                  Text(desc,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: cardTitleTextStyle),
                  const SizedBox(height: 2),
                  Text(rating,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: cardDescTextStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
