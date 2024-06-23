import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/utils/color_manager.dart';
import '../core/utils/style_maneger.dart';
import '../models/response/item_model.dart';
import 'button_without_fill.dart';

class ItemsBuilder extends StatelessWidget {
  const ItemsBuilder({super.key, required this.items});
  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Avaiable cars for ride",style: StyleManager.boldTextStyle(),
            ),
            SizedBox(height: 15,),
            Text(" ${items.length} cars found",style: StyleManager.onboardingText(),),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 170,
                        width: MediaQuery.sizeOf(context).width,
                        decoration:  BoxDecoration(
                            color: Color(0xff08B783).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: ColorManager.primaryColor)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(items[index].name,style: StyleManager.smallBlackText(),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(items[index].type,style: StyleManager.grySmallText(),),
                                          VerticalDivider(),
                                          Text("${items[index].SeatNumber} seats",style: StyleManager.onboardingText(),),
                                          VerticalDivider(),
                                          Text(items[index].fuile,style: StyleManager.grySmallText(),),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on,size: 20,),
                                          Text("${items[index].location}"),
                                          Text("( ${items[index].time} )")
                                        ],
                                      )
                                    ],
                                  ),
                                  Expanded(child: Image.asset(items[index].image,width: 100,height: 60,)),
                                ],
                              ),
                              SizedBox(height: 20,),
                              ButtonWithoutFill(buttonName: "View car list",onPressed: (){},)
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ]
      ),
    );
  }
}
