import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: ColorManager.successColor,
        centerTitle: false,
        leading:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Icon(Icons.arrow_back_ios_new_rounded,size: 14,color: Color(0xff414141),),
          TextButton(
          onPressed: (){
            Navigator.pop(context);
            }, child: Text("Back",),
            )
          ],
        ),
    );
  }
}
