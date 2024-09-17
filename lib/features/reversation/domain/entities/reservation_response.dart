import 'package:equatable/equatable.dart';

class ReservationResponse extends Equatable {
  final int id;
  final String client;
  final String bicycle;
  final String from;
  final String to;
  final double duration;
  final String startTime;
  final double price;
  final String reservationStatus;

  const ReservationResponse(
      {required this.id,
      required this.client,
      required this.bicycle,
      required this.from,
      required this.to,
      required this.duration,
      required this.startTime,
      required this.price,
      required this.reservationStatus});

  @override
  List<Object?> get props => [];
}
