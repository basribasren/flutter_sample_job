import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/set_bone_screen/models/set_bone_model.dart';
part 'set_bone_event.dart';
part 'set_bone_state.dart';

/// A bloc that manages the state of a SetBone according to the event that is dispatched to it.
class SetBoneBloc extends Bloc<SetBoneEvent, SetBoneState> {
  SetBoneBloc(SetBoneState initialState) : super(initialState) {
    on<SetBoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetBoneInitialEvent event,
    Emitter<SetBoneState> emit,
  ) async {}
}
