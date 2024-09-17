part of 'hubs_bloc.dart';

@immutable
sealed class HubsEvent {}

class getAllHubsEvent extends HubsEvent {
  final num lang;
  final num lat;

  getAllHubsEvent({required this.lang, required this.lat});

}
