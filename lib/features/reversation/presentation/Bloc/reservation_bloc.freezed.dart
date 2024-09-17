// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) createReservation,
    required TResult Function(String password, int reservationId)
        reservationPayment,
    required TResult Function(int bicycleId) getReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? createReservation,
    TResult? Function(String password, int reservationId)? reservationPayment,
    TResult? Function(int bicycleId)? getReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? createReservation,
    TResult Function(String password, int reservationId)? reservationPayment,
    TResult Function(int bicycleId)? getReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateReservation value) createReservation,
    required TResult Function(_ReservationPayment value) reservationPayment,
    required TResult Function(_GetReservation value) getReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateReservation value)? createReservation,
    TResult? Function(_ReservationPayment value)? reservationPayment,
    TResult? Function(_GetReservation value)? getReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateReservation value)? createReservation,
    TResult Function(_ReservationPayment value)? reservationPayment,
    TResult Function(_GetReservation value)? getReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEventCopyWith<$Res> {
  factory $ReservationEventCopyWith(
          ReservationEvent value, $Res Function(ReservationEvent) then) =
      _$ReservationEventCopyWithImpl<$Res, ReservationEvent>;
}

/// @nodoc
class _$ReservationEventCopyWithImpl<$Res, $Val extends ReservationEvent>
    implements $ReservationEventCopyWith<$Res> {
  _$ReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateReservationImplCopyWith<$Res> {
  factory _$$CreateReservationImplCopyWith(_$CreateReservationImpl value,
          $Res Function(_$CreateReservationImpl) then) =
      __$$CreateReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reservation reservation});
}

/// @nodoc
class __$$CreateReservationImplCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$CreateReservationImpl>
    implements _$$CreateReservationImplCopyWith<$Res> {
  __$$CreateReservationImplCopyWithImpl(_$CreateReservationImpl _value,
      $Res Function(_$CreateReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$CreateReservationImpl(
      null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }
}

/// @nodoc

class _$CreateReservationImpl implements _CreateReservation {
  const _$CreateReservationImpl(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationEvent.createReservation(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReservationImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReservationImplCopyWith<_$CreateReservationImpl> get copyWith =>
      __$$CreateReservationImplCopyWithImpl<_$CreateReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) createReservation,
    required TResult Function(String password, int reservationId)
        reservationPayment,
    required TResult Function(int bicycleId) getReservation,
  }) {
    return createReservation(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? createReservation,
    TResult? Function(String password, int reservationId)? reservationPayment,
    TResult? Function(int bicycleId)? getReservation,
  }) {
    return createReservation?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? createReservation,
    TResult Function(String password, int reservationId)? reservationPayment,
    TResult Function(int bicycleId)? getReservation,
    required TResult orElse(),
  }) {
    if (createReservation != null) {
      return createReservation(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateReservation value) createReservation,
    required TResult Function(_ReservationPayment value) reservationPayment,
    required TResult Function(_GetReservation value) getReservation,
  }) {
    return createReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateReservation value)? createReservation,
    TResult? Function(_ReservationPayment value)? reservationPayment,
    TResult? Function(_GetReservation value)? getReservation,
  }) {
    return createReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateReservation value)? createReservation,
    TResult Function(_ReservationPayment value)? reservationPayment,
    TResult Function(_GetReservation value)? getReservation,
    required TResult orElse(),
  }) {
    if (createReservation != null) {
      return createReservation(this);
    }
    return orElse();
  }
}

abstract class _CreateReservation implements ReservationEvent {
  const factory _CreateReservation(final Reservation reservation) =
      _$CreateReservationImpl;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$$CreateReservationImplCopyWith<_$CreateReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservationPaymentImplCopyWith<$Res> {
  factory _$$ReservationPaymentImplCopyWith(_$ReservationPaymentImpl value,
          $Res Function(_$ReservationPaymentImpl) then) =
      __$$ReservationPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password, int reservationId});
}

/// @nodoc
class __$$ReservationPaymentImplCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$ReservationPaymentImpl>
    implements _$$ReservationPaymentImplCopyWith<$Res> {
  __$$ReservationPaymentImplCopyWithImpl(_$ReservationPaymentImpl _value,
      $Res Function(_$ReservationPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? reservationId = null,
  }) {
    return _then(_$ReservationPaymentImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == reservationId
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReservationPaymentImpl implements _ReservationPayment {
  const _$ReservationPaymentImpl(this.password, this.reservationId);

  @override
  final String password;
  @override
  final int reservationId;

  @override
  String toString() {
    return 'ReservationEvent.reservationPayment(password: $password, reservationId: $reservationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationPaymentImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, reservationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationPaymentImplCopyWith<_$ReservationPaymentImpl> get copyWith =>
      __$$ReservationPaymentImplCopyWithImpl<_$ReservationPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) createReservation,
    required TResult Function(String password, int reservationId)
        reservationPayment,
    required TResult Function(int bicycleId) getReservation,
  }) {
    return reservationPayment(password, reservationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? createReservation,
    TResult? Function(String password, int reservationId)? reservationPayment,
    TResult? Function(int bicycleId)? getReservation,
  }) {
    return reservationPayment?.call(password, reservationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? createReservation,
    TResult Function(String password, int reservationId)? reservationPayment,
    TResult Function(int bicycleId)? getReservation,
    required TResult orElse(),
  }) {
    if (reservationPayment != null) {
      return reservationPayment(password, reservationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateReservation value) createReservation,
    required TResult Function(_ReservationPayment value) reservationPayment,
    required TResult Function(_GetReservation value) getReservation,
  }) {
    return reservationPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateReservation value)? createReservation,
    TResult? Function(_ReservationPayment value)? reservationPayment,
    TResult? Function(_GetReservation value)? getReservation,
  }) {
    return reservationPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateReservation value)? createReservation,
    TResult Function(_ReservationPayment value)? reservationPayment,
    TResult Function(_GetReservation value)? getReservation,
    required TResult orElse(),
  }) {
    if (reservationPayment != null) {
      return reservationPayment(this);
    }
    return orElse();
  }
}

abstract class _ReservationPayment implements ReservationEvent {
  const factory _ReservationPayment(
          final String password, final int reservationId) =
      _$ReservationPaymentImpl;

  String get password;
  int get reservationId;
  @JsonKey(ignore: true)
  _$$ReservationPaymentImplCopyWith<_$ReservationPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReservationImplCopyWith<$Res> {
  factory _$$GetReservationImplCopyWith(_$GetReservationImpl value,
          $Res Function(_$GetReservationImpl) then) =
      __$$GetReservationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bicycleId});
}

/// @nodoc
class __$$GetReservationImplCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$GetReservationImpl>
    implements _$$GetReservationImplCopyWith<$Res> {
  __$$GetReservationImplCopyWithImpl(
      _$GetReservationImpl _value, $Res Function(_$GetReservationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycleId = null,
  }) {
    return _then(_$GetReservationImpl(
      null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetReservationImpl implements _GetReservation {
  const _$GetReservationImpl(this.bicycleId);

  @override
  final int bicycleId;

  @override
  String toString() {
    return 'ReservationEvent.getReservation(bicycleId: $bicycleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReservationImpl &&
            (identical(other.bicycleId, bicycleId) ||
                other.bicycleId == bicycleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bicycleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReservationImplCopyWith<_$GetReservationImpl> get copyWith =>
      __$$GetReservationImplCopyWithImpl<_$GetReservationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) createReservation,
    required TResult Function(String password, int reservationId)
        reservationPayment,
    required TResult Function(int bicycleId) getReservation,
  }) {
    return getReservation(bicycleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reservation reservation)? createReservation,
    TResult? Function(String password, int reservationId)? reservationPayment,
    TResult? Function(int bicycleId)? getReservation,
  }) {
    return getReservation?.call(bicycleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? createReservation,
    TResult Function(String password, int reservationId)? reservationPayment,
    TResult Function(int bicycleId)? getReservation,
    required TResult orElse(),
  }) {
    if (getReservation != null) {
      return getReservation(bicycleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateReservation value) createReservation,
    required TResult Function(_ReservationPayment value) reservationPayment,
    required TResult Function(_GetReservation value) getReservation,
  }) {
    return getReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateReservation value)? createReservation,
    TResult? Function(_ReservationPayment value)? reservationPayment,
    TResult? Function(_GetReservation value)? getReservation,
  }) {
    return getReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateReservation value)? createReservation,
    TResult Function(_ReservationPayment value)? reservationPayment,
    TResult Function(_GetReservation value)? getReservation,
    required TResult orElse(),
  }) {
    if (getReservation != null) {
      return getReservation(this);
    }
    return orElse();
  }
}

abstract class _GetReservation implements ReservationEvent {
  const factory _GetReservation(final int bicycleId) = _$GetReservationImpl;

  int get bicycleId;
  @JsonKey(ignore: true)
  _$$GetReservationImplCopyWith<_$GetReservationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationResponse reservation)
        reservationLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationResponse reservation)? reservationLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationResponse reservation)? reservationLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReservationLoaded value) reservationLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReservationLoaded value)? reservationLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ReservationLoaded value)? reservationLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReservationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationResponse reservation)
        reservationLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationResponse reservation)? reservationLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationResponse reservation)? reservationLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReservationLoaded value) reservationLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReservationLoaded value)? reservationLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ReservationLoaded value)? reservationLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReservationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ReservationLoadedImplCopyWith<$Res> {
  factory _$$ReservationLoadedImplCopyWith(_$ReservationLoadedImpl value,
          $Res Function(_$ReservationLoadedImpl) then) =
      __$$ReservationLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReservationResponse reservation});
}

/// @nodoc
class __$$ReservationLoadedImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationLoadedImpl>
    implements _$$ReservationLoadedImplCopyWith<$Res> {
  __$$ReservationLoadedImplCopyWithImpl(_$ReservationLoadedImpl _value,
      $Res Function(_$ReservationLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservation = null,
  }) {
    return _then(_$ReservationLoadedImpl(
      null == reservation
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationResponse,
    ));
  }
}

/// @nodoc

class _$ReservationLoadedImpl implements _ReservationLoaded {
  const _$ReservationLoadedImpl(this.reservation);

  @override
  final ReservationResponse reservation;

  @override
  String toString() {
    return 'ReservationState.reservationLoaded(reservation: $reservation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationLoadedImpl &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationLoadedImplCopyWith<_$ReservationLoadedImpl> get copyWith =>
      __$$ReservationLoadedImplCopyWithImpl<_$ReservationLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationResponse reservation)
        reservationLoaded,
    required TResult Function(String message) error,
  }) {
    return reservationLoaded(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationResponse reservation)? reservationLoaded,
    TResult? Function(String message)? error,
  }) {
    return reservationLoaded?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationResponse reservation)? reservationLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (reservationLoaded != null) {
      return reservationLoaded(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReservationLoaded value) reservationLoaded,
    required TResult Function(_Error value) error,
  }) {
    return reservationLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReservationLoaded value)? reservationLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return reservationLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ReservationLoaded value)? reservationLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (reservationLoaded != null) {
      return reservationLoaded(this);
    }
    return orElse();
  }
}

abstract class _ReservationLoaded implements ReservationState {
  const factory _ReservationLoaded(final ReservationResponse reservation) =
      _$ReservationLoadedImpl;

  ReservationResponse get reservation;
  @JsonKey(ignore: true)
  _$$ReservationLoadedImplCopyWith<_$ReservationLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ReservationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationResponse reservation)
        reservationLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationResponse reservation)? reservationLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationResponse reservation)? reservationLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReservationLoaded value) reservationLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReservationLoaded value)? reservationLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ReservationLoaded value)? reservationLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReservationState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
