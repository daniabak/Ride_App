import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/features/bicycle/data/models/bicycle_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BicycleLocalData {
  Future<List<String>> getCachedCategoriesName();
  Future<List<BicycleModel>> getCachedBicyclesOfCategory();
  Future<BicycleModel> getCachedBicycleById();

  Future<Unit> cacheCategoiesName(List<String> categories);
  Future<Unit> cachBicyclesOfCategory(List<BicycleModel> bicycles);
  Future<Unit> cachBicycle(BicycleModel bicycle);
}

class BicycleLocalDataImp implements BicycleLocalData {
  final SharedPreferences sharedPreferences;

  BicycleLocalDataImp({required this.sharedPreferences});

  @override
  Future<Unit> cachBicycle(BicycleModel bicycle) {
    BicycleModel bicycleModel = bicycle;
    sharedPreferences.setString('cached_bicycle', jsonEncode(bicycleModel));
    return Future.value(unit);
  }

  @override
  Future<Unit> cachBicyclesOfCategory(List<BicycleModel> bicycles) {
    List bicyclesList = bicycles
        .map<Map<String, dynamic>>((bicycle) => bicycle.toJson())
        .toList();
    sharedPreferences.setString('cached_bicycles', jsonEncode(bicyclesList));

    return Future.value(unit);
  }

  @override
  Future<Unit> cacheCategoiesName(List<String> categories) {
    List categoryList = categories;
    sharedPreferences.setString('cached_categories', jsonEncode(categoryList));
    return Future.value(unit);
  }

  @override
  Future<BicycleModel> getCachedBicycleById() {
    final cachedBicycle = sharedPreferences.getString('cached_bicycle');
    if (cachedBicycle != null) {
      Map<String, dynamic> bicycleMap = jsonDecode(cachedBicycle);
      BicycleModel bicycleModel = BicycleModel.fromJson(bicycleMap);
      return Future.value(bicycleModel);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<List<BicycleModel>> getCachedBicyclesOfCategory() {
    final cachedBicycles = sharedPreferences.getString('cached_bicycles');
    if (cachedBicycles != null) {
      List bicyclesList = jsonDecode(cachedBicycles);
      List<BicycleModel> bicycles = bicyclesList
          .map<BicycleModel>((bicycle) => BicycleModel.fromJson(bicycle))
          .toList();
      return Future.value(bicycles);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<List<String>> getCachedCategoriesName() {
    final cachedCategories = sharedPreferences.getString('cached_categories');
    if (cachedCategories != null) {
      List categoryList = jsonDecode(cachedCategories);
      List<String> categories = categoryList.cast<String>();
      return Future.value(categories);
    } else {
      throw EmptyCacheException();
    }
  }
}
