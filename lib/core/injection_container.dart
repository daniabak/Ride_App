import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rideshare_app/core/networks/internet_check.dart';
import 'package:rideshare_app/features/bicycle/data/datasources/bicycle_local_data.dart';
import 'package:rideshare_app/features/bicycle/data/datasources/bicycle_remote_data.dart';
import 'package:rideshare_app/features/bicycle/data/repositories/bicycle_repo_imp.dart';
import 'package:rideshare_app/features/bicycle/domain/repositories/bicycle_repository.dart';
import 'package:rideshare_app/features/bicycle/domain/usecases/get_all_categories.dart';
import 'package:rideshare_app/features/bicycle/domain/usecases/get_bicycle_by_id.dart';
import 'package:rideshare_app/features/bicycle/domain/usecases/get_bicycles_by_category_name.dart';
import 'package:rideshare_app/features/bicycle/presentation/bloc/bicycle_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getInj = GetIt.instance;

Future<void> init() async {
  //biycecle
  //Bloc
  getInj.registerFactory(() => BicycleBloc(getInj(), getInj(), getInj()));
  //useCase
  getInj.registerLazySingleton(
      () => GetAllCategoriesUseCase(repository: getInj()));
  getInj.registerLazySingleton(
      () => GetBicyclesByCategoryNameUseCase(repository: getInj()));
  getInj
      .registerLazySingleton(() => GetBicycleByIdUseCase(repository: getInj()));

  //Repositories
  getInj.registerLazySingleton<BicycleRepository>(() => BicycleRepoImp(
      localData: getInj(), remoteData: getInj(), internetCheck: getInj()));

  //dataSources
  getInj.registerLazySingleton<BicycleLocalData>(
      () => BicycleLocalDataImp(sharedPreferences: getInj()));
  getInj.registerLazySingleton<BicycleRemoteData>(
      () => BicycleRemoteDataImpWithDio(dio: getInj(), response: getInj()));

//CORE
  getInj.registerLazySingleton<InternetCheck>(
      () => InternetCheckImp(internetConnectionChecker: getInj()));

  //external
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  getInj.registerLazySingleton(() => sharedPreferences);
  getInj.registerLazySingleton(() => Dio());
    getInj.registerLazySingleton(() => Response(requestOptions: getInj()));
  getInj.registerLazySingleton(() =>RequestOptions());

  getInj.registerLazySingleton(() => InternetConnectionChecker());
}
