part of 'login_bloc.dart';

@immutable
sealed class LoginState extends Equatable {}

final class LoginInitial extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginLoading extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginOffline extends LoginState {
  @override
  List<Object?> get props => [];
}

final class LoginLoaded extends LoginState {
  final String message;
  LoginLoaded({required this.message});
  @override
  List<Object?> get props => [message];
}

final class LoginError extends LoginState {
  final String message;
  LoginError({required this.message});
  @override
  List<Object?> get props => [message];
}
