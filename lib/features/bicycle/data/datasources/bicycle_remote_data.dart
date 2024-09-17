// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/features/bicycle/data/models/bicycle_model.dart';

abstract class BicycleRemoteData {
  Future<List<String>> getAllBicyclesCategory();
  Future<List<BicycleModel>> getAllBicyclesByCategoryName(String name);
  Future<BicycleModel> getBicycleById(int id);
}

class BicycleRemoteDataImpWithDio implements BicycleRemoteData {
  final Dio dio;
  Response response;

  BicycleRemoteDataImpWithDio({
    required this.dio,
    required this.response,
  });
  String token =
"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTM2NzA2MTY5IiwiaWF0IjoxNzI2NTcwMTEwLCJleHAiOjE3MjY2NTY1MTB9.Sr-sNo_ov4ywKTMnczE6r0zbWTqLnHZ4YA6l1L-P5lU"  ;
        
  @override
  Future<List<BicycleModel>> getAllBicyclesByCategoryName(String name) async {
    try {
      response = await dio.get(
          "https://rideshare.devscape.online/api/v1/bicycle/bicycles-by-category?category=$name",
          //options: getHeader(useToken: true),
            options: Options(
          headers: {
            "Content-Type": "application/json",
            "accept": "*/*",
            "Authorization": "Bearer $token"
          },
        ),
          );
      if (response.statusCode == 200) {
        List<dynamic> body = response.data['body'];
        List<BicycleModel> bicycles = List<BicycleModel>.generate(body.length,
            (index) => BicycleModel.fromJson(body[index]));
        return bicycles;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }
    

  @override
  Future<List<String>> getAllBicyclesCategory() async {
    print(" categoty remote data");
    try {
      response = await dio.get(
        "https://rideshare.devscape.online/api/v1/bicycle/bicycles-categories",
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "accept": "*/*",
            "Authorization": "Bearer $token"
          },
        ),
      );
      print(response.data);
      // options: getHeader(useToken: true));
      if (response.statusCode == 200) {
        List<String> categories = List<String>.from(response.data["body"]);
        return categories;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<BicycleModel> getBicycleById(int id) async {
    try {
      response = await dio.get(
          "https://rideshare.devscape.online/api/v1/bicycle/$id",
            options: Options(
          headers: {
            "Content-Type": "application/json",
            "accept": "*/*",
            "Authorization": "Bearer $token"
          },
        ),
      );
         // options: getHeader(useToken: true));
      if (response.statusCode == 200) {
        BicycleModel bicycleModel =
            BicycleModel.fromJson(response.data['body']);
        return bicycleModel;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }
}
