part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent extends Equatable {}

class SendInfoCreateAccount extends SignupEvent {

  @override
  List<Object?> get props => [];
}

class FirstSendInfo extends SignupEvent {
  final String firstName;
  final String lastName;
  final String phone;
  final String username;
  final String birthDate;

  FirstSendInfo(
      {required this.firstName,
      required this.lastName,
      required this.phone,
      required this.username,
      required this.birthDate});
  @override
  List<Object?> get props => [firstName, lastName, phone, birthDate, username];
}

class SecondSendInfo extends SignupEvent {
  final String password;
  final String confirmPassword;

  SecondSendInfo({required this.password, required this.confirmPassword});

  @override
  List<Object?> get props => [
        password,
        confirmPassword,
      ];
}
