import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/bicycle/domain/entities/bicycle.dart';

abstract class BicycleRepository {
  Future<Either<Failure, List<String>>> getAllBicyclesCategory();
  Future<Either<Failure, List<Bicycle>>> getAllBicyclesByCategoryName(
      String name);
  Future<Either<Failure, Bicycle>> getBicycleById(int id);
}
