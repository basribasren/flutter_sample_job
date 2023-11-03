import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_athree_screen/models/set_athree_model.dart';
part 'set_athree_event.dart';
part 'set_athree_state.dart';

/// A bloc that manages the state of a SetAthree according to the event that is dispatched to it.
class SetAthreeBloc extends Bloc<SetAthreeEvent, SetAthreeState> {
  SetAthreeBloc(SetAthreeState initialState) : super(initialState) {
    on<SetAthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetAthreeInitialEvent event,
    Emitter<SetAthreeState> emit,
  ) async {}
}
