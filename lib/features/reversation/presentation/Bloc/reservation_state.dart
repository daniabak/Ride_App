part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.loading() = _Loading;
  const factory ReservationState.reservationLoaded( ReservationResponse reservation) = _ReservationLoaded;
  

  const factory ReservationState.error(String message) = _Error;
}
