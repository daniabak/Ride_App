part of 'reservation_bloc.dart';

@freezed
class ReservationEvent with _$ReservationEvent {
  const factory ReservationEvent.createReservation(Reservation reservation) = _CreateReservation;
  const factory ReservationEvent.reservationPayment(String password,int reservationId) =_ReservationPayment;
  const factory ReservationEvent.getReservation(int bicycleId) = _GetReservation;
}
