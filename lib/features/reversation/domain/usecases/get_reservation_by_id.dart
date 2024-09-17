// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';
import 'package:rideshare_app/features/reversation/domain/repositories/reservation_repository.dart';

class GetReservationByIdUseCase {
  ReservationRepository repository;
  GetReservationByIdUseCase({
    required this.repository,
  });

  Future<Either<Failure, ReservationResponse>> call(int reservationId) async{
    return await repository.getReservationById(reservationId);
  }
}
