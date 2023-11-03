import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/search_option_three_screen/models/search_option_three_model.dart';
part 'search_option_three_event.dart';
part 'search_option_three_state.dart';

/// A bloc that manages the state of a SearchOptionThree according to the event that is dispatched to it.
class SearchOptionThreeBloc
    extends Bloc<SearchOptionThreeEvent, SearchOptionThreeState> {
  SearchOptionThreeBloc(SearchOptionThreeState initialState)
      : super(initialState) {
    on<SearchOptionThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchOptionThreeInitialEvent event,
    Emitter<SearchOptionThreeState> emit,
  ) async {}
}
