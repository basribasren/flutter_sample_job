import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/profile_drop_draweritem/models/profile_drop_model.dart';
part 'profile_drop_event.dart';
part 'profile_drop_state.dart';

/// A bloc that manages the state of a ProfileDrop according to the event that is dispatched to it.
class ProfileDropBloc extends Bloc<ProfileDropEvent, ProfileDropState> {
  ProfileDropBloc(ProfileDropState initialState) : super(initialState) {
    on<ProfileDropInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileDropInitialEvent event,
    Emitter<ProfileDropState> emit,
  ) async {}
}
