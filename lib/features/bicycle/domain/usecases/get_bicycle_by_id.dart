import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:rideshare_app/features/bicycle/domain/repositories/bicycle_repository.dart';

class GetBicycleByIdUseCase {
  final BicycleRepository repository;

  GetBicycleByIdUseCase({required this.repository});

  Future<Either<Failure, Bicycle>> call(int bicycleId) async {
    return await repository.getBicycleById(bicycleId);
  }
}
