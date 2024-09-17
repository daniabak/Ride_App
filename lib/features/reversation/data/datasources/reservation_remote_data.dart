import 'package:dio/dio.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/features/reversation/data/models/reservation_model.dart';
import 'package:rideshare_app/features/reversation/data/models/reservation_response_model.dart';

abstract class ReservationRemoteData {
  Future<ReservationResponseModel> createNewReservation(
      ReservationModel reservation);
  Future<ReservationResponseModel> reservationPayment(
      String password, int reservationId);
  Future<ReservationResponseModel> getReservationById(int reservationId);
  Future<List<ReservationResponseModel>> getReservationsByClientId(
      int clientId);
}

class ReseervationRemoteDataImp implements ReservationRemoteData {
  final Dio dio;
  Response response;

  ReseervationRemoteDataImp({
    required this.dio,
    required this.response,
  });
  String token =
"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTM2NzA2MTY5IiwiaWF0IjoxNzI2NTcwMTEwLCJleHAiOjE3MjY2NTY1MTB9.Sr-sNo_ov4ywKTMnczE6r0zbWTqLnHZ4YA6l1L-P5lU";

  @override
  Future<ReservationResponseModel> createNewReservation(
      ReservationModel reservation) async {
    try {
      response =
          await dio.post("https://rideshare.devscape.online/api/v1/reservation",
              //options: getHeader(useToken: true),
              options: Options(
                headers: {
                  "Content-Type": "application/json",
                  "accept": "*/*",
                  "Authorization": "Bearer $token"
                },
              ),
              data: reservation.toJson());
      if (response.statusCode == 200) {
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<ReservationResponseModel> getReservationById(int reservationId) async {
    try {
      response = await dio.get(
        "https://rideshare.devscape.online/api/v1/reservation/by-reservation-id/$reservationId",
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
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }


  @override
  Future<List<ReservationResponseModel>> getReservationsByClientId(
      int clientId) async {
    try {
      response = await dio.get(
        "https://rideshare.devscape.online/api/v1/reservation/by-bicycle-id/$clientId",
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
        List<ReservationResponseModel> data =
            List<ReservationResponseModel>.generate(body.length,
                (index) => ReservationResponseModel.fromJson(body[index]));
        return data;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }

  @override
  Future<ReservationResponseModel> reservationPayment(
      String password, int reservationId) async {
    try {
      response = await dio.post(
          "https://rideshare.devscape.online/api/v1/reservation/reseravation-payment",
          //options: getHeader(useToken: true),
          options: Options(
            headers: {
              "Content-Type": "application/json",
              "accept": "*/*",
              "Authorization": "Bearer $token"
            },
          ),
          data: {"walletPassword": password, "reservationID": reservationId});
      if (response.statusCode == 200) {
        dynamic body = response.data['body'];
        ReservationResponseModel data = ReservationResponseModel.fromJson(body);
        return data;
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    }
  }
}
