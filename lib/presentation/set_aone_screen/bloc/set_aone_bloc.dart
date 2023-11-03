import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_aone_screen/models/set_aone_model.dart';
part 'set_aone_event.dart';
part 'set_aone_state.dart';

/// A bloc that manages the state of a SetAone according to the event that is dispatched to it.
class SetAoneBloc extends Bloc<SetAoneEvent, SetAoneState> {
  SetAoneBloc(SetAoneState initialState) : super(initialState) {
    on<SetAoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetAoneInitialEvent event,
    Emitter<SetAoneState> emit,
  ) async {}
}
