import 'package:dio/dio.dart';

class BaseServices{
  final String baseUrl='';
  Dio dio = Dio();
  late Response response;
}