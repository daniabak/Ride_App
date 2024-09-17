import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/features/reversation/data/models/reservation_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ReservationLocalData {
  Future<ReservationResponseModel> getCachedReservationById(int reservationId);
  Future<List<ReservationResponseModel>> getCachedReservationByClientId(
      int clientId);
  Future<Unit> cacheReservationById(
      int reservationId, ReservationResponseModel reservation);
  Future<Unit> cacheReservationByClientId(
      int clientId, List<ReservationResponseModel> reservation);
}

class ReservationLocalDataImp implements ReservationLocalData {
  final SharedPreferences sharedPreferences;

  ReservationLocalDataImp({required this.sharedPreferences});

  @override
  Future<Unit> cacheReservationByClientId(
      int clientId, List<ReservationResponseModel> reservation) {
    List reseravationList = reservation;
    sharedPreferences.setString('cached_reservation_client_$clientId',
        jsonEncode(jsonEncode(reseravationList)));
    return Future.value(unit);
  }

  @override
  Future<Unit> cacheReservationById(int reservationId, ReservationResponseModel reservation) {
    sharedPreferences.setString('cached_reservation_$reservationId', jsonEncode(reservation.toJson()));
    return Future.value(unit);
  }

  @override
  Future<List<ReservationResponseModel>> getCachedReservationByClientId(int clientId) {
    final cachedReservation =sharedPreferences.getString('cached_reservation_client_$clientId');
    if (cachedReservation != null) {
      List reservationList = jsonDecode(cachedReservation);
      List<ReservationResponseModel> reservation = reservationList.map<ReservationResponseModel>((reservation) => ReservationResponseModel.fromJson(reservation)).toList();
      return Future.value(reservation);
    } else {
      throw EmptyCacheException();
    }
  }

  @override
  Future<ReservationResponseModel> getCachedReservationById(int reservationId) {
    final cachedReservation =sharedPreferences.getString('cached_reservation_$reservationId');
    if (cachedReservation != null) {
      Map<String, dynamic> reservationMap = jsonDecode(cachedReservation);
      ReservationResponseModel reservation =ReservationResponseModel.fromJson(reservationMap);
      return Future.value(reservation);
    } else {
      throw EmptyCacheException();
    }
  }
}
