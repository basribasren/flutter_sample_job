import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_a4_get_started_screen/models/set_a4_get_started_model.dart';
part 'set_a4_get_started_event.dart';
part 'set_a4_get_started_state.dart';

/// A bloc that manages the state of a SetA4GetStarted according to the event that is dispatched to it.
class SetA4GetStartedBloc
    extends Bloc<SetA4GetStartedEvent, SetA4GetStartedState> {
  SetA4GetStartedBloc(SetA4GetStartedState initialState) : super(initialState) {
    on<SetA4GetStartedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetA4GetStartedInitialEvent event,
    Emitter<SetA4GetStartedState> emit,
  ) async {}
}
