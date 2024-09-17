// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation.dart';
import 'package:rideshare_app/features/reversation/domain/entities/reservation_response.dart';
import 'package:rideshare_app/features/reversation/domain/usecases/create_reservation.dart';
import 'package:rideshare_app/features/reversation/domain/usecases/get_reservation_by_id.dart';
import 'package:rideshare_app/features/reversation/domain/usecases/reservation_payment.dart';
part 'reservation_bloc.freezed.dart';
part 'reservation_event.dart';
part 'reservation_state.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  CreateReservationUseCase reservationUseCase;
  GetReservationByIdUseCase byIdUseCase;
 // GetReservationByClientidUseCase byClientidUseCase;
  ReservationPaymentUseCase paymentUseCase;

  ReservationBloc(
    this.reservationUseCase,
    this.byIdUseCase,
    this.paymentUseCase,
  ) : super(const ReservationState.loading()) {
    
    on<ReservationEvent>((event, emit) async {
      await event.when(createReservation: (reservation) async {
        emit(const ReservationState.loading());
        final reservationInfo = await reservationUseCase(reservation);
        reservationInfo.fold(
          (reservationInfo) => emit(
            const ReservationState.error("error"),
          ),
          (reservationInfo) => emit(
            ReservationState.reservationLoaded(reservationInfo),
          ),
        );
      }, reservationPayment: (password, reservationId) async {
        emit(const ReservationState.loading());
        final payment = await paymentUseCase(password, reservationId);
        payment.fold(
          (payment) => emit(
            const ReservationState.error("error"),
          ),
          (payment) => emit(
            ReservationState.reservationLoaded(payment),
          ),
        );
      }, getReservation: (reservationId) async {
        emit(const ReservationState.loading());
        final reservationInfo = await byIdUseCase(reservationId);
        reservationInfo.fold(
          (reservationInfo) => emit(
            const ReservationState.error("error"),
          ),
          (reservationInfo) => emit(
            ReservationState.reservationLoaded(reservationInfo),
          ),
        );
      });
    });
  }
}
