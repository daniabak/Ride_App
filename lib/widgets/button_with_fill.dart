import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

class ButtonWithFill extends StatelessWidget {
  const ButtonWithFill(
      {super.key,
      required this.buttonName,
      this.onPressed,
      required this.width,
      required this.height});
  final String buttonName;
  final Function()? onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height),
          side: const BorderSide(color: ColorManager.primaryColor),
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          backgroundColor: ColorManager.primaryColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(
          buttonName,
          style: const TextStyle(
              fontFamily: "Poppins", color: ColorManager.whiteColor),
        ),
      ),
    );
  }
}
