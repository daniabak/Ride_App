part of 'hubs_bloc.dart';

@immutable
sealed class HubsState {}

final class initHubState extends HubsState {}

final class SuccessGetHubs extends HubsState {
  final List<HubInfoModel> listOfHubs;

  SuccessGetHubs({required this.listOfHubs});
  @override
  List<Object?> get props => [listOfHubs];
}

final class FailedGetHubs extends HubsState {}

final class LoadingGetHubs extends HubsState {}

final class OfflineGetHubs extends HubsState {}
