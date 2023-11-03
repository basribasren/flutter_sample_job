import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/messagelist_item_model.dart';
import 'package:basri_s_application5/presentation/messages_screen/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  List<MessagelistItemModel> fillMessagelistItemList() {
    return [
      MessagelistItemModel(groupBy: "Companies"),
      MessagelistItemModel(groupBy: "Companies"),
      MessagelistItemModel(groupBy: "Companies"),
      MessagelistItemModel(groupBy: "Individual Messages"),
      MessagelistItemModel(groupBy: "Individual Messages"),
      MessagelistItemModel(groupBy: "Individual Messages"),
      MessagelistItemModel(groupBy: "Individual Messages")
    ];
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj?.copyWith(
      messagelistItemList: fillMessagelistItemList(),
    )));
  }
}
