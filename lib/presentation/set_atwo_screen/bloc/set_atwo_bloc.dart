import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_atwo_screen/models/set_atwo_model.dart';
part 'set_atwo_event.dart';
part 'set_atwo_state.dart';

/// A bloc that manages the state of a SetAtwo according to the event that is dispatched to it.
class SetAtwoBloc extends Bloc<SetAtwoEvent, SetAtwoState> {
  SetAtwoBloc(SetAtwoState initialState) : super(initialState) {
    on<SetAtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetAtwoInitialEvent event,
    Emitter<SetAtwoState> emit,
  ) async {}
}
