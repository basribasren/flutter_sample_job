import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/savedlist_item_model.dart';
import 'package:basri_s_application5/presentation/saved_page/models/saved_model.dart';
part 'saved_event.dart';
part 'saved_state.dart';

/// A bloc that manages the state of a Saved according to the event that is dispatched to it.
class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc(SavedState initialState) : super(initialState) {
    on<SavedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SavedInitialEvent event,
    Emitter<SavedState> emit,
  ) async {
    emit(state.copyWith(
        savedModelObj: state.savedModelObj?.copyWith(
      savedlistItemList: fillSavedlistItemList(),
    )));
  }

  List<SavedlistItemModel> fillSavedlistItemList() {
    return [
      SavedlistItemModel(
          uXIntern: ImageConstant.imgImage4,
          jrExecutive: "UX Intern",
          price: "88,000/y",
          burgerKing: "Spotify",
          losAngelsUS: "Los Angels, US",
          fullTime: "Full-Time"),
      SavedlistItemModel(
          uXIntern: ImageConstant.imgFlagErrorcontainer,
          jrExecutive: "UX Designer",
          price: "96,000/y",
          burgerKing: "Dribbble",
          losAngelsUS: "San Francisco, US",
          fullTime: "Full-Time"),
      SavedlistItemModel(
          uXIntern: ImageConstant.imgFacebook,
          jrExecutive: "Product  Designer",
          price: "12,000/y",
          burgerKing: "Facebook",
          losAngelsUS: "San Jose, US",
          fullTime: "Full-Time")
    ];
  }
}
