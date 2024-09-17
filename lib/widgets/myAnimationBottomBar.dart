import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

class myAnimationBottomBar extends StatelessWidget {
  const myAnimationBottomBar({
    super.key,
    required NotchBottomBarController controller,
    required PageController pageController,
  })  : _controller = controller,
        _pageController = pageController;

  final NotchBottomBarController _controller;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        circleMargin: 2,
        kIconSize: 22,
        color: ColorManager.primaryColor,
        showLabel: true,
        textOverflow: TextOverflow.visible,
        maxLine: 1,
        kBottomRadius: 2.0,
        notchColor: ColorManager.primaryColor,
        removeMargins: true,
        bottomBarWidth: double.infinity,
        showShadow: false,
        durationInMilliSeconds: 400,
        itemLabelStyle: const TextStyle(fontSize: 10),
        elevation: 1,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home,
              color: ColorManager.whiteColor,
            ),
            activeItem: Icon(
              Icons.home,
              color: Colors.white,
            ),
            itemLabel: 'home',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.favorite,
              color: ColorManager.whiteColor,
            ),
            activeItem: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            itemLabel: 'Favorite',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.location_pin,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.location_pin,
              color: Colors.white,
            ),
            itemLabel: 'Location',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.sell,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.sell,
              color: Colors.white,
            ),
            itemLabel: 'Offer',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.wallet,
              color: Colors.white,
            ),
            activeItem: Icon(
              Icons.wallet,
              color: Colors.white,
            ),
            itemLabel: 'Wallet',
          ),
        ]);
  }
}
