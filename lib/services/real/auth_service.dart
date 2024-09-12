import 'package:dio/dio.dart';

import 'package:rideshare_app/core/store/get_header.dart';
import 'package:rideshare_app/core/store/getit.dart';
import 'package:rideshare_app/core/utils/string_manager.dart';
import 'package:rideshare_app/models/login.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/models/user_model.dart';
import 'package:rideshare_app/services/base_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthService extends BaseServices {
  Future<ResultModel> signUpService(UserModel user);
  Future<ResultModel> loginService(LoginModel user);
}

class AuthServiceImpl extends AuthService {
  @override
  Future<ResultModel> signUpService(UserModel user) async {
    try {
      response = await dio.post("$baseUrl/${EndPointTextManager.signup}",
          options: getHeader(useToken: false), data: user.toMap());
      print(response);
      if (response.statusCode == 200) {
        print("1");
        storage
            .get<SharedPreferences>()
            .setString("token", response.data["body"]["token"]);
        return SuccessResult(message: response.data["message"]);
      } else {
        print("2");
        return ErrorsResult(response.data["message"]);
      }
    } on DioException catch (e) {
      print("3");
      return ExceptionResult(message: e.toString());
    }
  }

  @override
  Future<ResultModel> loginService(LoginModel user) async {
    try {
      response = await dio.post("$baseUrl/${EndPointTextManager.login}",
          options: getHeader(useToken: false), data: user.toMap());

      if (response.statusCode == 200) {
        print(response.data);
        storage
            .get<SharedPreferences>()
            .setString("token", response.data["body"]["token"]);
        return SuccessResult(message: response.data["message"]);
      } else {
        return ErrorsResult(response.data["message"]);
      }
    } on DioException catch (e) {
      return ExceptionResult(message: e.response!.data["message"]);
    }
  }
}
