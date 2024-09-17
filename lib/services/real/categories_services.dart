import 'package:dio/dio.dart';
import 'package:rideshare_app/models/response/categorymodel.dart';
import 'package:rideshare_app/services/base_services.dart';

import '../../models/result_model.dart';

class CategoriesServices extends BaseServices {
  Future<ResultModel> getCategories() async {
    try {
      response = await dio.get(baseUrl);
      if (response.statusCode == 200) {
        List<CategoryModel> categories = List.generate(response.data.legnth,
            (index) => CategoryModel.fromMap(response.data));
        return ListOf(resutl: categories);
      } else {
        return ErrorsResult("oops something is Wrong");
      }
    } on DioException catch (e) {
      return ExceptionResult(
        message: e.message!,
      );
    }
  }
}
