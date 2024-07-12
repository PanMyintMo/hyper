import 'package:flutter/material.dart';

class ProfileScren extends StatefulWidget {
  const ProfileScren({super.key});

  @override
  State<ProfileScren> createState() => _ProfileScrenState();
}

class _ProfileScrenState extends State<ProfileScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile Screen'),
      ),
    );
  }
}
