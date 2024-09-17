import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/features/bicycle/domain/repositories/bicycle_repository.dart';

class GetAllCategoriesUseCase {
  final BicycleRepository repository;
  GetAllCategoriesUseCase({required this.repository});

  Future<Either<Failure, List<String>>> call() async {
    print(" categoty usecase");
    return await repository.getAllBicyclesCategory();
  }
}
