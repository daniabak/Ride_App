import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/core/networks/internet_check.dart';
import 'package:rideshare_app/features/reversation/data/datasources/reservation_local_data.dart';
import 'package:rideshare_app/features/reversation/data/datasources/reservation_remote_data.dart';
import 'package:rideshare_app/features/reversation/data/models/reservation_model.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';
import 'package:rideshare_app/features/reversation/domain/repositories/reservation_repository.dart';


class ReservationRepositoryImp implements ReservationRepository {
  final ReservationLocalData localData;
  final ReservationRemoteData remoteData;
  final InternetCheck internetCheck;

  ReservationRepositoryImp({
    required this.localData,
    required this.remoteData,
    required this.internetCheck,
  });

  @override
  Future<Either<Failure, ReservationResponse>> createNewReservation(Reservation reservation) async {
          final ReservationModel reservationModel =ReservationModel.fromReservation(reservation);
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.createNewReservation(reservationModel);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, ReservationResponse>> getReservationById(
      int reservationId) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getReservationById(reservationId);
        localData.cacheReservationById(reservationId, result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final cachedResult =
            await localData.getCachedReservationById(reservationId);
        return Right(cachedResult);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<ReservationResponse>>> getReservationsByClientId(
      int clientId) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getReservationsByClientId(clientId);
        localData.cacheReservationByClientId(clientId, result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final cachedResult = await localData.getCachedReservationByClientId(clientId);
        return Right(cachedResult);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, ReservationResponse>> reservationPayment(String password, int reservationId) async {
    if (await internetCheck.isConnected) {
      try {
        final result =
            await remoteData.reservationPayment(password, reservationId);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
