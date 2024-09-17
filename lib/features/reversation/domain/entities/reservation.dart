import 'package:equatable/equatable.dart';

class Reservation extends Equatable {
  final int bicycleId;
  final int fromHubId;
  final int toHubId;
  final int duration;
  final String startTime;
  final String paymentMethod;

  const Reservation(
      {required this.bicycleId,
      required this.fromHubId,
      required this.toHubId,
      required this.duration,
      required this.startTime,
      required this.paymentMethod});

  @override
  List<Object?> get props => [bicycleId, fromHubId, toHubId];
}
