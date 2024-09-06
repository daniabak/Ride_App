import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

InputDecoration decorationOfPasswordTextField(
    void Function() onTap,
    bool showPasswordVaraiable,
    String hintText,
    Color primaryColor,
    Color errorColor) {
  return InputDecoration(
    suffix: InkWell(
      onTap: onTap,
      child: Icon(
        showPasswordVaraiable ? Icons.visibility_off : Icons.visibility,
        color: primaryColor,
      ),
    ),
    errorStyle: TextStyle(color: errorColor),
    errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: errorColor),
        borderRadius: BorderRadius.circular(12)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(12)),
    fillColor: ColorManager.whiteColor,
    filled: true,
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(12)),
    border: OutlineInputBorder(borderSide: BorderSide(color: errorColor)),
    hintText: hintText,
    labelStyle: TextStyle(fontSize: 77, color: primaryColor),
  );
}
