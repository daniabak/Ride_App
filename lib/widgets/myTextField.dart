import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

class myTextFieldName extends StatelessWidget {
  final String? validatorText;
  final String? hintName;
  final Widget? prefixIcon;
  final bool readOnly;
  final String? label;
  final TextStyle? hintStyle;
  final Color? fillColor;
  double circular = 12;
  myTextFieldName({
    super.key,
    this.fillColor,
    this.prefixIcon,
    this.hintStyle,
    required this.circular,
    this.validatorText,
    this.hintName,
    required this.nameController,
    required this.readOnly,
    this.label,
  });

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      readOnly: readOnly,
      keyboardType: TextInputType.name,
      cursorColor: ColorManager.primaryColor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        errorStyle: const TextStyle(color: ColorManager.primaryColor),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManager.primaryColor),
            borderRadius: BorderRadius.circular(circular)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManager.primaryColor),
            borderRadius: BorderRadius.circular(circular)),
        fillColor: fillColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManager.primaryColor),
            borderRadius: BorderRadius.circular(circular)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorManager.primaryColor),
            borderRadius: BorderRadius.circular(circular)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.primaryColor)),
        hintText: hintName,
        hintStyle: hintStyle,
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelStyle:
            const TextStyle(fontSize: 16, color: ColorManager.primaryColor),
      ),
      validator: (text) {
        if (text!.isEmpty) {
          return validatorText;
        }
        return null;
      },
      controller: nameController,
    );
  }
}
