import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/applicationslist_item_model.dart';
import 'package:basri_s_application5/presentation/applications_page/models/applications_model.dart';
part 'applications_event.dart';
part 'applications_state.dart';

/// A bloc that manages the state of a Applications according to the event that is dispatched to it.
class ApplicationsBloc extends Bloc<ApplicationsEvent, ApplicationsState> {
  ApplicationsBloc(ApplicationsState initialState) : super(initialState) {
    on<ApplicationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplicationsInitialEvent event,
    Emitter<ApplicationsState> emit,
  ) async {
    emit(state.copyWith(
        applicationsModelObj: state.applicationsModelObj?.copyWith(
      applicationslistItemList: fillApplicationslistItemList(),
    )));
  }

  List<ApplicationslistItemModel> fillApplicationslistItemList() {
    return [
      ApplicationslistItemModel(
          jrExecutive: ImageConstant.imgGoogle,
          jrExecutive1: "Jr Executive",
          price: "115,000/y",
          burgerKing: "Google",
          losAngelsUS: "Los Angels, US",
          fullTime: "Full-Time"),
      ApplicationslistItemModel(
          jrExecutive: ImageConstant.imgImage8,
          jrExecutive1: "Mid Executive",
          price: "86,000/y",
          burgerKing: "Beats",
          losAngelsUS: "San Jose, US",
          fullTime: "Full-Time"),
      ApplicationslistItemModel(
          jrExecutive: ImageConstant.imgImage4,
          jrExecutive1: "Sr Executive",
          price: "96,000/y",
          burgerKing: "Spotify",
          losAngelsUS: "San Francisco, US",
          fullTime: "Full-Time")
    ];
  }
}
