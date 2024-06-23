// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:rideshare_app/core/utils/color_manager.dart';

class ChangeSign extends StatelessWidget {
  VoidCallback? onPress;
  final String text;
   final double textSize;
    final double textbuttonSize;
  final String textbutton;
  ChangeSign({
    Key? key,
    this.onPress,
    required this.text,
    required this.textSize,
    required this.textbuttonSize,
    required this.textbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: textSize, color: ColorManager.greyTextr),
        ),
        TextButton(
            onPressed: onPress,
            child: Text(
              textbutton,
              style: TextStyle(color: ColorManager.primaryColor, fontSize: textbuttonSize),
            ))
      ],
    );
  }
}
