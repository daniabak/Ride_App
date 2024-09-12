import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:rideshare_app/models/login.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/real/auth_service.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  InternetConnectionChecker internetConnectionChecker;
  LoginBloc({
    required this.internetConnectionChecker,
  }) : super(LoginInitial()) {
    on<SendInfoLogin>((event, emit) async {
      emit(LoginLoading());

      if (await internetConnectionChecker.hasConnection) {
        var response = await AuthServiceImpl().loginService(event.userLogin);
        if (response is SuccessResult) {
          emit(LoginLoaded(message: response.message));
        } else if (response is ExceptionResult) {
          emit(LoginError(message: response.message));
        }
      } else {
        emit(LoginOffline());
      }
    });
  }
}
