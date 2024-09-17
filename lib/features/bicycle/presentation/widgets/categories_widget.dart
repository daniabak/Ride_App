import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/style_maneger.dart';
import 'package:rideshare_app/features/bicycle/presentation/pages/bicycles_list_page.dart';
import '../../../../core/utils/color_manager.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key, required this.categories});
  final List<String> categories;
  final List<String> images = [
    AssetsManager.road,
    AssetsManager.mountine,
    AssetsManager.hybrid,
    AssetsManager.e_bike
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 14,
                  color: Color(0xff414141),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          "Bike Categories",
          style: StyleManager.normalText(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: Text(
                "Choose Category",
                style: StyleManager.boldTextStyle(),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  BicyclesListPage(
                            name: categories[index] ,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                          color: ColorManager.primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: ColorManager.primaryColor)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            images[index],
                            height: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            categories[index],
                            style: StyleManager.smallBlackText(),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
