import 'package:mockito/mockito.dart';
import 'package:rideshare_app/core/utils/assets_manager.dart';
import 'package:rideshare_app/models/response/item_model.dart';
import 'package:rideshare_app/services/real/Items_service.dart';

import '../../models/result_model.dart';

class MockItemsService extends Mock implements ItemsService{

  @override
  Future<ResultModel> getItems(int id) async{
    List<Map<String, dynamic>> temp = [

      {
        "name": "BMW Cabrio",
         "type": "Automatic",
       "SeatNumber": 4,
      "location":"800m ",
        "image": AssetsManager.CarImage1,
      "fuile" :"octane",
      "time":"5 min"

      },

      {
        "name": "Mustang Shelby GT",
         "type": "Automatic",
       "SeatNumber": 4,
      "location":"800m ",
        "image": AssetsManager.CarImage2,
      "fuile" :"octane",
      "time":"5 min"

      }
      ];
      if(temp.isNotEmpty ){
        List<ItemModel> items=List.generate(temp.length, (index)=> ItemModel.fromMap(temp[index]));
        return ListOf(resutl: items);
      }
      else{
        List<ItemModel> items=List.generate(temp.length, (index)=> ItemModel.fromMap(temp[index]));
        return ListOf(resutl: items);

      }
  }
}