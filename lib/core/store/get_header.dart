import 'package:dio/dio.dart';
import 'package:rideshare_app/core/store/getit.dart';
import 'package:shared_preferences/shared_preferences.dart';

getHeader({bool useToken = true}) {
  if (useToken) {
    return Options(headers: {
      "Content-Type": "application/json",
      "accept": "*/*",
      "Authorization":
          "Bearer ${storage.get<SharedPreferences>().getString('token')}",
    });
  } else {
    return Options(headers: {
      "Content-Type": "application/json",
      "accept": "*/*",
    });
  }
}
