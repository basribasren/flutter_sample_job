import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/jobslider_item_model.dart';
import '../models/userprofile1_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_six_screen/models/homepage_six_model.dart';
part 'homepage_six_event.dart';
part 'homepage_six_state.dart';

/// A bloc that manages the state of a HomepageSix according to the event that is dispatched to it.
class HomepageSixBloc extends Bloc<HomepageSixEvent, HomepageSixState> {
  HomepageSixBloc(HomepageSixState initialState) : super(initialState) {
    on<HomepageSixInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<HomepageSixState> emit,
  ) {
    List<Administration1ItemModel> newList =
        List<Administration1ItemModel>.from(
            state.homepageSixModelObj!.administration1ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        homepageSixModelObj: state.homepageSixModelObj
            ?.copyWith(administration1ItemList: newList)));
  }

  List<JobsliderItemModel> fillJobsliderItemList() {
    return List.generate(1, (index) => JobsliderItemModel());
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          userImage: ImageConstant.imgImage4,
          userName: "Sr Developer",
          companyName: "Spotify",
          salary: "115,000/y"),
      Userprofile1ItemModel(
          userImage: ImageConstant.imgImage5,
          userName: "Jr Executive",
          companyName: "Pinterest",
          salary: "96,000/y")
    ];
  }

  _onInitialize(
    HomepageSixInitialEvent event,
    Emitter<HomepageSixState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageSixModelObj: state.homepageSixModelObj?.copyWith(
      jobsliderItemList: fillJobsliderItemList(),
      userprofile1ItemList: fillUserprofile1ItemList(),
    )));
  }
}
