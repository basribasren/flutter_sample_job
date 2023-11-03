import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_one_screen/models/homepage_one_model.dart';
part 'homepage_one_event.dart';
part 'homepage_one_state.dart';

/// A bloc that manages the state of a HomepageOne according to the event that is dispatched to it.
class HomepageOneBloc extends Bloc<HomepageOneEvent, HomepageOneState> {
  HomepageOneBloc(HomepageOneState initialState) : super(initialState) {
    on<HomepageOneInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          userImage: ImageConstant.imgLogosDribbbleIcon,
          userName: "UX Designer",
          userPlatform: "Dribbble",
          userSalary: "80,000/y"),
      UserprofileItemModel(
          userImage: ImageConstant.imgFacebook,
          userName: "Sr Engineer",
          userPlatform: "Facebook",
          userSalary: "96,000/y")
    ];
  }

  _onInitialize(
    HomepageOneInitialEvent event,
    Emitter<HomepageOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homepageOneModelObj: state.homepageOneModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}
