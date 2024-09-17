import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/screens/map.dart';
import 'package:rideshare_app/widgets/dd.dart';
import 'package:rideshare_app/widgets/myAnimationBottomBar.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

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
      MapPage(
        controller: _controller,
      ),
      const Page2(),
      const Page2(),
      const Page3(),
      const Page3(),
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
          controller: _controller, pageController: _pageController),
    );
  }
}
