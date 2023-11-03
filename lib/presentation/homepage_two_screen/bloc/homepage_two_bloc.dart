import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/it_item_model.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_two_screen/models/homepage_two_model.dart';
part 'homepage_two_event.dart';
part 'homepage_two_state.dart';

/// A bloc that manages the state of a HomepageTwo according to the event that is dispatched to it.
class HomepageTwoBloc extends Bloc<HomepageTwoEvent, HomepageTwoState> {
  HomepageTwoBloc(HomepageTwoState initialState) : super(initialState) {
    on<HomepageTwoInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<HomepageTwoState> emit,
  ) {
    List<ItItemModel> newList =
        List<ItItemModel>.from(state.homepageTwoModelObj!.itItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homepageTwoModelObj:
            state.homepageTwoModelObj?.copyWith(itItemList: newList)));
  }

  List<ItItemModel> fillItItemList() {
    return List.generate(3, (index) => ItItemModel());
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userImage: ImageConstant.imgProfile,
          userName: "Jr Executive",
          userSalary: "96,000/y",
          userCompany: "Burger King",
          userLocation: "Los Angels, US"),
      UserprofilelistItemModel(
          userImage: ImageConstant.imgImage8,
          userName: "Product Manager",
          userSalary: "84,000/y",
          userCompany: "Beats",
          userLocation: "Florida, US")
    ];
  }

  _onInitialize(
    HomepageTwoInitialEvent event,
    Emitter<HomepageTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        homepageTwoModelObj: state.homepageTwoModelObj?.copyWith(
      itItemList: fillItItemList(),
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }
}
