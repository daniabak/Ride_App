import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';
import 'package:rideshare_app/features/reversation/domain/repositories/reservation_repository.dart';

class GetReservationByClientidUseCase {
  ReservationRepository repository;
  GetReservationByClientidUseCase({
    required this.repository,
  });

  Future<Either<Failure, List<ReservationResponse>>> call(int clientId) async {
    return await repository.getReservationsByClientId(clientId);
  }
}
