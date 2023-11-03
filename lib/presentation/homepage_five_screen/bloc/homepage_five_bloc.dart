import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist4_item_model.dart';
import '../models/userprofilelist5_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_five_screen/models/homepage_five_model.dart';
part 'homepage_five_event.dart';
part 'homepage_five_state.dart';

/// A bloc that manages the state of a HomepageFive according to the event that is dispatched to it.
class HomepageFiveBloc extends Bloc<HomepageFiveEvent, HomepageFiveState> {
  HomepageFiveBloc(HomepageFiveState initialState) : super(initialState) {
    on<HomepageFiveInitialEvent>(_onInitialize);
  }

  List<Userprofilelist4ItemModel> fillUserprofilelist4ItemList() {
    return [
      Userprofilelist4ItemModel(
          userImage: ImageConstant.imgImage5,
          userName: "Jr Executive",
          companyName: "Pinterest",
          salary: "96,000/y"),
      Userprofilelist4ItemModel(
          userImage: ImageConstant.imgImage4,
          userName: "Sr Developer",
          companyName: "Spotify",
          salary: "115,000/y")
    ];
  }

  List<Userprofilelist5ItemModel> fillUserprofilelist5ItemList() {
    return [
      Userprofilelist5ItemModel(
          userImage: ImageConstant.imgProfile,
          userName: "Jr Executive",
          userSalary: "96,000/y",
          userCompany: "Burger King",
          userLocation: "Los Angels, US"),
      Userprofilelist5ItemModel(
          userImage: ImageConstant.imgImage8,
          userName: "Product Manager",
          userSalary: "84,000/y",
          userCompany: "Beats",
          userLocation: "Florida, US")
    ];
  }

  _onInitialize(
    HomepageFiveInitialEvent event,
    Emitter<HomepageFiveState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homepageFiveModelObj: state.homepageFiveModelObj?.copyWith(
      userprofilelist4ItemList: fillUserprofilelist4ItemList(),
      userprofilelist5ItemList: fillUserprofilelist5ItemList(),
    )));
  }
}
