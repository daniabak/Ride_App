// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'package:rideshare_app/models/hubInfo.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/real/hub_service.dart';

part 'Hubs_event.dart';
part 'Hubs_state.dart';

class HubsBloc extends Bloc<HubsEvent, HubsState> {
  InternetConnectionChecker internetConnectionChecker;
  HubsBloc({
    required this.internetConnectionChecker,
  }) : super(initHubState()) {
    on<getAllHubsEvent>((event, emit) async {
      emit(LoadingGetHubs());
      if (await internetConnectionChecker.hasConnection) {
        try {
        ResultModel response =
            await HubServiceImplement().getAllHubs(event.lang, event.lat);
        print("from bloc hubs");
        print(response);
        if (response is ListOf<HubInfoModel>) {
          
          emit(SuccessGetHubs(listOfHubs: response.resutl));
        } else if (response is ErrorsResult) {
          emit(FailedGetHubs());
        }
        } on DioException catch (e) {
          emit(FailedGetHubs());
        }
      } else {
        emit(OfflineGetHubs());
      }
    });
  }
}
