import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_b4_get_started_screen/models/set_b4_get_started_model.dart';
part 'set_b4_get_started_event.dart';
part 'set_b4_get_started_state.dart';

/// A bloc that manages the state of a SetB4GetStarted according to the event that is dispatched to it.
class SetB4GetStartedBloc
    extends Bloc<SetB4GetStartedEvent, SetB4GetStartedState> {
  SetB4GetStartedBloc(SetB4GetStartedState initialState) : super(initialState) {
    on<SetB4GetStartedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetB4GetStartedInitialEvent event,
    Emitter<SetB4GetStartedState> emit,
  ) async {}
}
