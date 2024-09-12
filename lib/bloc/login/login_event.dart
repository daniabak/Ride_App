part of 'login_bloc.dart';

@immutable
sealed class LoginEvent extends Equatable {}

class SendInfoLogin extends LoginEvent {
  LoginModel userLogin;

  SendInfoLogin({required this.userLogin});

  @override
  List<Object?> get props => [userLogin];
}
