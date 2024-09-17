import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class InternetCheck {
  Future<bool> get isConnected;
}

class InternetCheckImp implements InternetCheck {
  final InternetConnectionChecker internetConnectionChecker;

  InternetCheckImp({required this.internetConnectionChecker});

  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}
