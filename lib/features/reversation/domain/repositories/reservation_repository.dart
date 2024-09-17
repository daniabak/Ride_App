import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';

abstract class ReservationRepository {
  Future<Either<Failure, ReservationResponse>> createNewReservation(
      Reservation reservation);
  Future<Either<Failure, ReservationResponse>> reservationPayment(
      String password, int reservationId);

  Future<Either<Failure, ReservationResponse>> getReservationById(
      int reservationId);

  Future<Either<Failure, List<ReservationResponse>>> getReservationsByClientId(
      int clientId);
}
