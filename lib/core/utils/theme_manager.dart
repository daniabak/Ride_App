import 'package:flutter/material.dart';
import 'color_manager.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 190, 38, 38),
      weight: 24,
    ),
  );
}
