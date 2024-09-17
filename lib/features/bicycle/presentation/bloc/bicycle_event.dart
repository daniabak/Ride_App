part of 'bicycle_bloc.dart';

@freezed
class BicycleEvent with _$BicycleEvent {
  const factory BicycleEvent.getCategories() = _GetCategories;
  const factory BicycleEvent.getBicyclesOfCategory(String category) =_GetBicyclesByCategory;
  const factory BicycleEvent.getBicycle(int bicycleId) = _GetBicycle;
}
      