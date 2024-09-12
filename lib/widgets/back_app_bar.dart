import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/widgets/Titles.dart';

class backAppBar extends StatelessWidget {
  const backAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("${AssetsManager.imagesPath}/angle-left.png"),
            HeaderText(
              text: "back",
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
