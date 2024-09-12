// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/physics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/models/user_model.dart';
import 'package:rideshare_app/services/real/auth_service.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  InternetConnectionChecker internetConnectionChecker;
  SignupBloc({
    required this.internetConnectionChecker,
  }) : super(SignUpInitial()) {
    UserModel finalUser = UserModel(
        firstName: '',
        lastName: '',
        username: '',
        phone: '',
        password: '',
        confirmPassword: '',
        birthDate: '');

    on<FirstSendInfo>((event, emit) {
      finalUser = finalUser.copyWith(
          firstName: event.firstName,
          birthDate: event.birthDate,
          lastName: event.lastName,
          phone: event.phone,
          username: event.username);
      print("From First Event");
      print(finalUser.toMap());
    });

    on<SecondSendInfo>(
      (event, emit) {
        finalUser = finalUser.copyWith(
            password: event.password, confirmPassword: event.confirmPassword);
        print("From Second Event");
        print(finalUser.toMap());
      },
    );

    on<SendInfoCreateAccount>((event, emit) async {
      emit(SignUpLoading());

      print(finalUser);
      if (await internetConnectionChecker.hasConnection) {
      var response = await AuthServiceImpl().signUpService(finalUser);
      if (response is SuccessResult) {
        emit(SignUpLoaded(message: response.message));
      } else if (response is ExceptionResult) {
        emit(SignUpError(message: response.message));
      }
      } else {
      emit(SignUpOffline());
      }
    });
  }
}
