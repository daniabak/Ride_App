import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:rideshare_app/core/go_router.dart/go_router.dart';

import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/core/utils/style_maneger.dart';
import 'package:rideshare_app/screens/categories_screen.dart';
import 'package:rideshare_app/screens/auth_screens/signUp.dart/signUp.dart';

import '../widgets/button_without_fill.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Image.asset(AssetsManager.welcomeScreen),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Welcome",
            style: StyleManager.boldTextStyle(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Have a better sharing experience",
            style: StyleManager.onboardingText(),
          ),
          const Spacer(flex: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).push(Routes.signUpPath);
                },
                style: ElevatedButton.styleFrom(
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: ColorManager.primaryColor),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Create an account",
                    style: TextStyle(
                        fontFamily: "Poppins", color: ColorManager.whiteColor),
                  ),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWithoutFill(
                buttonName: 'Log In',
                onPressed: () {
                  GoRouter.of(context).push(Routes.signInPath);
                },
              )),
          const Spacer(),
        ],
      ),
    ).animate().fade(begin: -1, end: 3);
  }
}
