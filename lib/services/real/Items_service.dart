import 'package:dio/dio.dart';
import 'package:rideshare_app/models/response/item_model.dart';
import 'package:rideshare_app/services/base_services.dart';

import '../../models/result_model.dart';

class ItemsService extends BaseServices{
  Future<ResultModel> getItems(int id) async {
  try {
    response = await dio.get(baseUrl);
    if (response.statusCode == 200) {
      List<ItemModel> items = List.generate(
          response.data.length, (index) => ItemModel.fromMap(response.data));
      return ListOf(resutl: items);
    }
    else {
      return ErrorsResult("oops ther is an error");
    }
  }
    on DioException catch (e) {
    return ExceptionResult(
      message: e.message!,
    );

  }
  }
}