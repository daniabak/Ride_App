import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/color_manager.dart';
import 'package:rideshare_app/widgets/myButton.dart';
import 'package:rideshare_app/widgets/myTextField.dart';
import 'package:rideshare_app/widgets/my_sized_box.dart';

class buttonOfReservation extends StatelessWidget {
  void Function() onTapReservation;
   buttonOfReservation({
    super.key,
    required this.onTapReservation,
    required this.search,
  });

  final TextEditingController search;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 140,
        left: 22,
        right: 22,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: ColorManager.primaryColor.withOpacity(0.4),
          ),
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 4.5,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  22,
                ),
                child: myTextFieldName(
                  circular: 12,
                  nameController: search,
                  readOnly: false,
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[300],
                  hintName: "where would you go?",
                ),
              ),
              MyButton(
                  title: "Reservation",
                  onpress: onTapReservation,
                  colors: ColorManager.primaryColor,
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 15,
                  radius: 12),
              const sizedBox50(),
            ],
          ),
        ));
  }
}
