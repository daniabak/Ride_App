import 'package:dio/dio.dart';

abstract class BaseServices{
  final String baseUrl='https://rideshare.devscape.online/api/v1';
  Dio dio = Dio();
  late Response response;
}
