import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/widgets/Titles.dart';
import 'package:rideshare_app/widgets/back_app_bar.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("${AssetsManager.imagesPath}/angle-left.png"),
              HeaderText(
                text: "back",
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        title: const Text("Request for rent"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}