import 'package:flutter/material.dart';
import 'package:hyper/screen/homescreen.dart';
import 'package:hyper/screen/profilescreen.dart';

class HyperPageScreen extends StatefulWidget {
  const HyperPageScreen({super.key});

  @override
  State<HyperPageScreen> createState() => _HyperPageScreenState();
}

class _HyperPageScreenState extends State<HyperPageScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  final screens = [const HomeWidget(), const ProfileScren()];

  @override
  void initState() {
    _pageController = PageController(initialPage: _currentIndex);

    super.initState();
  }


  List<BottomNavigationBarItem> navAdminMenu = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: '홈'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.grid_view), label: '카테고리'),
    const BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage('assets/images/btnimg.png'),
        ),
        label: '커뮤니티'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.account_circle), label: '마이페이지'),
  ];


  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: navAdminMenu,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          });
        },
        elevation: 16,
        showUnselectedLabels: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: screens,
      ),
    );
  }
}
