import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilestack_item_model.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:basri_s_application5/presentation/homepage_three_screen/models/homepage_three_model.dart';
part 'homepage_three_event.dart';
part 'homepage_three_state.dart';

/// A bloc that manages the state of a HomepageThree according to the event that is dispatched to it.
class HomepageThreeBloc extends Bloc<HomepageThreeEvent, HomepageThreeState> {
  HomepageThreeBloc(HomepageThreeState initialState) : super(initialState) {
    on<HomepageThreeInitialEvent>(_onInitialize);
  }

  List<UserprofilestackItemModel> fillUserprofilestackItemList() {
    return List.generate(1, (index) => UserprofilestackItemModel());
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgProfile,
          userName: "Jr Executive",
          userSalary: "96,000/y",
          userCompany: "Burger King",
          userLocation: "Los Angels, US"),
      Userprofilelist1ItemModel(
          userImage: ImageConstant.imgImage8,
          userName: "Product Manager",
          userSalary: "84,000/y",
          userCompany: "Beats",
          userLocation: "Florida, US")
    ];
  }

  _onInitialize(
    HomepageThreeInitialEvent event,
    Emitter<HomepageThreeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homepageThreeModelObj: state.homepageThreeModelObj?.copyWith(
      userprofilestackItemList: fillUserprofilestackItemList(),
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }
}
