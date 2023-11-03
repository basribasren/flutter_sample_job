import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist2_item_model.dart';
import '../models/userprofilelist3_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_four_page/models/homepage_four_model.dart';
part 'homepage_four_event.dart';
part 'homepage_four_state.dart';

/// A bloc that manages the state of a HomepageFour according to the event that is dispatched to it.
class HomepageFourBloc extends Bloc<HomepageFourEvent, HomepageFourState> {
  HomepageFourBloc(HomepageFourState initialState) : super(initialState) {
    on<HomepageFourInitialEvent>(_onInitialize);
  }

  List<Userprofilelist2ItemModel> fillUserprofilelist2ItemList() {
    return [
      Userprofilelist2ItemModel(
          userImage: ImageConstant.imgProfile,
          userName: "Jr Executive",
          userSalary: "96,000/y",
          userCompany: "Burger King",
          userLocation: "Los Angels, US"),
      Userprofilelist2ItemModel(
          userImage: ImageConstant.imgImage8,
          userName: "Product Manager",
          userSalary: "84,000/y",
          userCompany: "Beats",
          userLocation: "Florida, US")
    ];
  }

  List<Userprofilelist3ItemModel> fillUserprofilelist3ItemList() {
    return [
      Userprofilelist3ItemModel(
          userImage: ImageConstant.imgFacebook,
          userName: "Sr Engineer",
          userCompany: "Facebook",
          userSalary: "96,000/y"),
      Userprofilelist3ItemModel(
          userImage: ImageConstant.imgLogosDribbbleIcon,
          userName: "UX Designer",
          userCompany: "Dribbble",
          userSalary: "80,000/y")
    ];
  }

  _onInitialize(
    HomepageFourInitialEvent event,
    Emitter<HomepageFourState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homepageFourModelObj: state.homepageFourModelObj?.copyWith(
      userprofilelist2ItemList: fillUserprofilelist2ItemList(),
      userprofilelist3ItemList: fillUserprofilelist3ItemList(),
    )));
  }
}
