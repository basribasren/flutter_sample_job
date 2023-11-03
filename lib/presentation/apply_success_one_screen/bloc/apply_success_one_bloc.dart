import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/apply_success_one_screen/models/apply_success_one_model.dart';
part 'apply_success_one_event.dart';
part 'apply_success_one_state.dart';

/// A bloc that manages the state of a ApplySuccessOne according to the event that is dispatched to it.
class ApplySuccessOneBloc
    extends Bloc<ApplySuccessOneEvent, ApplySuccessOneState> {
  ApplySuccessOneBloc(ApplySuccessOneState initialState) : super(initialState) {
    on<ApplySuccessOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ApplySuccessOneInitialEvent event,
    Emitter<ApplySuccessOneState> emit,
  ) async {}
}
