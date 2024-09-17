import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/screens/homepage/map/view/map.dart';
import 'package:rideshare_app/widgets/dd.dart';
import 'package:rideshare_app/widgets/myAnimationBottomBar.dart';

class HomePageView extends StatefulWidget {
  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _pageController = PageController(initialPage: 2);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 2);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      Page2(),
      Page2(),
      MapPage(
        controller: _controller,
      ),
      Page3(),
      Page3(),
    ];
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        body: PageView(
          controller: _pageController,
          children: List.generate(
              bottomBarPages.length, (index) => bottomBarPages[index]),
        ),
        extendBody: true,
        bottomNavigationBar: myAnimationBottomBar(
            controller: _controller, pageController: _pageController));
  }
}
