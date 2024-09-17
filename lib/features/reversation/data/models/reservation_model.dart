import 'package:rideshare_app/features/reversation/domain/entities/reservation.dart';

class ReservationModel extends Reservation {
  const ReservationModel(
      {required super.bicycleId,
      required super.fromHubId,
      required super.toHubId,
      required super.duration,
      required super.startTime,
      required super.paymentMethod});

  factory ReservationModel.fromJson(Map<String, dynamic> json) {
    return ReservationModel(
        bicycleId: json['bicycleId'],
        fromHubId: json['fromHubId'],
        toHubId: json['toHubId'],
        duration: json['duration'],
        startTime: json['startTime'],
        paymentMethod: json['paymentMethod']);
  }

  Map<String, dynamic> toJson() {
    return {
      'bicycleId': bicycleId,
      'fromHubId': fromHubId,
      'toHubId': toHubId,
      'duration': duration,
      'startTime': startTime,
      'paymentMethod': paymentMethod
    };
  }

  factory ReservationModel.fromReservation(Reservation reservation) {
    return ReservationModel(
      duration: reservation.duration,
      startTime: reservation.startTime,
      bicycleId: reservation.bicycleId,
      fromHubId: reservation.fromHubId,
      toHubId: reservation.toHubId,
      paymentMethod: reservation.paymentMethod,
    );
  }
}
