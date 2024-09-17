import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';

class ReservationResponseModel extends ReservationResponse {
  const ReservationResponseModel(
      {required super.id,
      required super.client,
      required super.bicycle,
      required super.from,
      required super.to,
      required super.duration,
      required super.startTime,
      required super.price,
      required super.reservationStatus});

  factory ReservationResponseModel.fromJson(Map<String, dynamic> json) {
    return ReservationResponseModel(
        id: json['id'],
        client: json['client'],
        bicycle: json['bicycle'],
        from: json['from'],
        to: json['to'],
        duration: json['duration'],
        startTime: json['startTime'],
        price: json['price'],
        reservationStatus: json['reservationStatus']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'client': client,
      'bicycle': bicycle,
      'from': from,
      'duration': duration,
      'to': to,
      'startTime': startTime,
      'price': price,
      'reservationStatus': reservationStatus,
    };
  }
  factory ReservationResponseModel.fromReservation(ReservationResponse reservation) {
    return ReservationResponseModel(
      id: reservation.id,
      client: reservation.client,
      bicycle: reservation.bicycle,
      from: reservation.from,
      to: reservation.to,
      duration: reservation.duration,
      startTime: reservation.startTime,
      price: reservation.price,
      reservationStatus: reservation.reservationStatus,
    );
  }
}
