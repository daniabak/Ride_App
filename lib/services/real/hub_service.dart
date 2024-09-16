import 'package:dio/dio.dart';

import 'package:rideshare_app/core/store/get_header.dart';

import 'package:rideshare_app/models/hubInfo.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/base_services.dart';

abstract class HubService extends BaseServices {
  getAllHubs(num lang, num lat);
}

class HubServiceImplement extends HubService {
  @override
  Future<ResultModel> getAllHubs(num lang, num lat) async {
    try {
      print("lat: $lat,lang:$lang");
      response = await dio.get("$baseUrl/hubs?longtitude=$lang&latitude=$lat",
          options: getHeader());

      if (response.statusCode == 200) {
     
        List<HubInfoModel> listOfHubs = List.generate(
          response.data["body"].length,
          (index) => HubInfoModel.fromMap(response.data["body"][index]),
        );
     
        ListOf<HubInfoModel> hubs = ListOf(resutl: listOfHubs);
        return hubs;
      } else {
        return ErrorsResult(response.data["message"]);
      }
    } on DioException catch (e) {
      print(e.message);
      return ErrorsResult(response.data["message"]);
    }
  }
}
