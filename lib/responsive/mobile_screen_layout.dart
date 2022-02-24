import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/utils/global_variables.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  _MobileScreenLayoutState createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  // For tabs animation
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    // Animating Page
    pageController.animateToPage(
      page,
      duration: const Duration(
        milliseconds: 200,
      ),
      curve: Curves.easeIn,
    );
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          top: 4,
        ),
        child: CupertinoTabBar(
          backgroundColor: mobileBackgroundColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/ic_home_active.svg',
                color: primaryColor,
                height: 22,
              ),
              icon: SvgPicture.asset(
                'assets/ic_home.svg',
                color: primaryColor,
                height: 24,
                width: 24,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/ic_search_active.svg',
                color: primaryColor,
                height: 22,
              ),
              icon: SvgPicture.asset(
                'assets/ic_search.svg',
                color: primaryColor,
                height: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/ic_reels.svg',
                color: primaryColor,
                height: 23,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/ic_heart_active.svg',
                color: primaryColor,
                height: 23,
              ),
              icon: SvgPicture.asset(
                'assets/ic_heart.svg',
                color: primaryColor,
                height: 23,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                'assets/ic_account_active.svg',
                color: primaryColor,
                height: 23,
              ),
              icon: SvgPicture.asset(
                'assets/ic_account.svg',
                color: primaryColor,
                height: 23,
              ),
              label: '',
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
