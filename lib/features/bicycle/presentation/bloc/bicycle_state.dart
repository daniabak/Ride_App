part of 'bicycle_bloc.dart';

@freezed
class BicycleState with _$BicycleState {
  const factory BicycleState.loaing() = _Loading;
  const factory BicycleState.categoriesLoaded(List<String> categories) =
      _CategoriesLoaded;
  const factory BicycleState.bicyclesLoaded(List<Bicycle> bicycles) =
      _BicyclesLoaded;
  const factory BicycleState.bicycleLoaded(Bicycle bicycle) =
      _BicycleLoaded;

  const factory BicycleState.error(String message) = _Error;
}
