import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';

class BicycleInfoContainer extends StatelessWidget {
  const BicycleInfoContainer( 
      {super.key, required this.name, required this.value});
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 44,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color(0xff08B783).withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: ColorManager.primaryColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name),
          ), Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(value),
          )],
        ),
      ),
    );
  }
}
