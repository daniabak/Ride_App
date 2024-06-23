import 'dart:ui';

import 'package:flutter/material.dart';

import 'color_manager.dart';

class StyleManager {
  static TextStyle boldTextStyle(
      {Color color = ColorManager.blackColor,
      double size = 24,
      FontWeight fontWeight = FontWeight.bold,
      }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: "Poppins"
    );
  }
  static TextStyle smallBlackText(
      {Color color = ColorManager.blackColor,
      double size = 16,
      }
   ) {
    return TextStyle(
      color: color,
      fontFamily: "Poppins",
      fontSize: size,
    );
  }

  static TextStyle onboardingText(
      {Color color = ColorManager.greyWithOpacity,
      double size = 14,
     }) {
    return TextStyle(
      color: color,
      fontSize: size, fontFamily: "Poppins"
    );
  }
  static TextStyle normalText(
      {Color color = ColorManager.blackColor,
        double size = 18,
      }) {
    return TextStyle(
        color: color,
        fontSize: size, fontFamily: "Poppins"
    );
  }
  static TextStyle grySmallText(
      {Color color = ColorManager.greyTextr,
        double size = 12,
      }) {
    return TextStyle(
        color: color,
        fontSize: size, fontFamily: "Poppins"
    );
  }
}
