part of 'signup_bloc.dart';

@immutable
sealed class SignupState extends Equatable {}

final class SignUpInitial extends SignupState {
  @override
  List<Object?> get props => [];
}

final class SignUpLoading extends SignupState {
  @override
  List<Object?> get props => [];
}

final class SignUpOffline extends SignupState {
  @override
  List<Object?> get props => [];
}

final class SignUpLoaded extends SignupState {
  final String message;
  SignUpLoaded({required this.message});
  @override
  List<Object?> get props => [message];
}

final class SignUpError extends SignupState {
  final String message;
  SignUpError({required this.message});
  @override
  List<Object?> get props => [message];
}
