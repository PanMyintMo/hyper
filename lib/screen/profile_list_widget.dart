import 'package:flutter/material.dart';
import 'package:hyper/module/profile_module.dart';
import 'package:hyper/route/app_router.dart';
import 'package:hyper/route/profile_route.dart';
import 'package:hyper/screen/profilepage.dart';

class ProfileListWidget extends StatelessWidget {
  final List<Map<String, String>> profiles = [
    {'name': 'Name01', 'image': 'assets/proimages/pro1.png'},
    {'name': 'Name02', 'image': 'assets/proimages/pro2.png'},
    {'name': 'Name03', 'image': 'assets/proimages/pro3.png'},
    {'name': 'Name04', 'image': 'assets/proimages/pro4.png'},
    {'name': 'Name05', 'image': 'assets/proimages/pro5.png'},
    {'name': 'Name06', 'image': 'assets/proimages/pro6.png'},
    {'name': 'Name07', 'image': 'assets/proimages/pro7.png'},
    {'name': 'Name08', 'image': 'assets/proimages/pro8.png'},
    {'name': 'Name09', 'image': 'assets/proimages/pro9.png'},
    {'name': 'Name10', 'image': 'assets/proimages/pro10.png'},
  ];

  ProfileListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: profiles.map((profile) {
            return GestureDetector(
              onTap: () {
                bool isSpecial = profile['name'] == 'Name01';
                AppRouter.changeRoute<ProfileModule>(ProfileRoutes.root,
                    args: ProfileArg(
                        name: profile['name']!,
                        image: profile['image']!,
                        isSpecial: isSpecial));
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(profile['image']!),
                      ),
                    ),
                    child: profile['name'] == 'Name01'
                        ? const Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20.0,
                            ),
                          )
                        : Container(),
                  ),
                  Text(profile['name']!),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
