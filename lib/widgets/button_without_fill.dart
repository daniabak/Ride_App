import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/color_manager.dart';

class ButtonWithoutFill extends StatelessWidget {
   ButtonWithoutFill({super.key, required this.buttonName, this.onPressed});
    final String buttonName;
    final Function()? onPressed;
   // bool fill=false;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: ElevatedButton(onPressed:onPressed,
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: ColorManager.primaryColor),
            shape:  ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ), child:
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(buttonName,style: const TextStyle(fontFamily: "Poppins",
              color: ColorManager.primaryColor),),
        ),
      ),
    );
  }
}
