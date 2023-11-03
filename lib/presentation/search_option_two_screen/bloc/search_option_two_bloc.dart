import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchoptionlist_item_model.dart';
import 'package:basri_s_application5/presentation/search_option_two_screen/models/search_option_two_model.dart';
part 'search_option_two_event.dart';
part 'search_option_two_state.dart';

/// A bloc that manages the state of a SearchOptionTwo according to the event that is dispatched to it.
class SearchOptionTwoBloc
    extends Bloc<SearchOptionTwoEvent, SearchOptionTwoState> {
  SearchOptionTwoBloc(SearchOptionTwoState initialState) : super(initialState) {
    on<SearchOptionTwoInitialEvent>(_onInitialize);
  }

  List<SearchoptionlistItemModel> fillSearchoptionlistItemList() {
    return [
      SearchoptionlistItemModel(typeTen: "Product Manager"),
      SearchoptionlistItemModel(typeTen: "UX Designer"),
      SearchoptionlistItemModel(typeTen: "Product Designer")
    ];
  }

  _onInitialize(
    SearchOptionTwoInitialEvent event,
    Emitter<SearchOptionTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        searchOptionTwoModelObj: state.searchOptionTwoModelObj?.copyWith(
      searchoptionlistItemList: fillSearchoptionlistItemList(),
    )));
  }
}
