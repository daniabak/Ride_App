import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rideshare_app/models/result_model.dart';
import 'package:rideshare_app/services/mock/mock_items_service.dart';

import '../../models/response/item_model.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc() : super(const ItemsState.loading()) {
    on<ItemsEvent>((event, emit) async {
      event.when(getItems: (id) async {
        emit(ItemsState.loading());
        try {
          var data = await MockItemsService().getItems(id);
          if (data is ListOf<ItemModel>) {
            emit(ItemsState.loaded(data.resutl));
          } else {
            emit(ItemsState.error());
          }
        } catch (e) {
          throw e.toString();
        }
      });
    });
  }
}
