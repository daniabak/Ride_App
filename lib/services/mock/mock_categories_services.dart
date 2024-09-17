
import 'package:rideshare_app/models/response/categorymodel.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/real/categories_services.dart';
import 'package:mockito/mockito.dart';

import '../../core/utils/assets_manager.dart';


class MockCategoriesServices extends Mock implements CategoriesServices{

  @override
  Future<ResultModel> getCategories() async{
    List<Map<String, dynamic>> temp = [
    {
      "name": "Car",
    "image": AssetsManager.car,
    "id": 1
  },
    {
    "name": "Bike",
    "image":AssetsManager.road,
    "id": 2
    },
    {
    "name": "Cycle",
    "image": AssetsManager.car,
    "id": 3
    },
      {
        "name": "Taxi",
        "image": AssetsManager.car,
        "id": 3
      }
    ];

    if(temp.isNotEmpty ){
      List<CategoryModel> categories =List.generate(temp.length, (index)=> CategoryModel.fromMap(temp[index]));
      return ListOf(resutl: categories);
    }
    else{
      List<CategoryModel> categories =List.generate(temp.length, (index)=> CategoryModel.fromMap(temp[index]));
      return ListOf(resutl: categories);
    }
  }

}