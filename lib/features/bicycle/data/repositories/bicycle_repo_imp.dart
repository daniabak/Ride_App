import 'package:dartz/dartz.dart';
import 'package:rideshare_app/core/errors/exceptions.dart';
import 'package:rideshare_app/core/errors/failures.dart';
import 'package:rideshare_app/core/networks/internet_check.dart';
import 'package:rideshare_app/features/bicycle/data/datasources/bicycle_local_data.dart';
import 'package:rideshare_app/features/bicycle/data/datasources/bicycle_remote_data.dart';
import 'package:rideshare_app/features/bicycle/domain/entities/bicycle.dart';
import 'package:rideshare_app/features/bicycle/domain/repositories/bicycle_repository.dart';

class BicycleRepoImp implements BicycleRepository {
  final BicycleLocalData localData;
  final BicycleRemoteData remoteData;
  final InternetCheck internetCheck;

  BicycleRepoImp(
      {required this.localData,
      required this.remoteData,
      required this.internetCheck});

  @override
  Future<Either<Failure, List<String>>> getAllBicyclesCategory() async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getAllBicyclesCategory();
        print(" result =$result");
        localData.cacheCategoiesName(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localData.getCachedCategoriesName();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<Bicycle>>> getAllBicyclesByCategoryName(
      String name) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getAllBicyclesByCategoryName(name);
        localData.cachBicyclesOfCategory(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localData.getCachedBicyclesOfCategory();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Bicycle>> getBicycleById(int id) async {
    if (await internetCheck.isConnected) {
      try {
        final result = await remoteData.getBicycleById(id);
        localData.cachBicycle(result);
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localData.getCachedBicycleById();
        return Right(result);
      } on EmptyCacheException {
        return Left(EmptyCacheFailure());
      }
    }
  }
}
