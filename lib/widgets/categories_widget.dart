import 'package:flutter/material.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/core/utils/style_maneger.dart';
import '../core/utils/color_manager.dart';
import '../models/response/categorymodel.dart';
import '../screens/items_screen.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key, required this.categories});
 final List<CategoryModel> categories;

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
                    ))),
            //   TextButton(
            //     onPressed: (){
            //       Navigator.pop(context);
            //     }, child: Text("Back",style: StyleManager.smallBlackText(), ),

            //   )
          ],
        ),
        title: Text(
          "Select transport",
          style: StyleManager.normalText(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Text(
                "Select transport",
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
                                builder: (context) => const ItemsScreen(
                                      id: 0,
                                    )));
                      },
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color:  ColorManager.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(color: ColorManager.primaryColor)),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            Image.asset( categories[index].image,),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              categories[index].name,
                              style: StyleManager.smallBlackText(),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
