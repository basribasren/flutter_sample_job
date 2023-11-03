import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/profile_style_one_screen/models/profile_style_one_model.dart';part 'profile_style_one_event.dart';part 'profile_style_one_state.dart';/// A bloc that manages the state of a ProfileStyleOne according to the event that is dispatched to it.
class ProfileStyleOneBloc extends Bloc<ProfileStyleOneEvent, ProfileStyleOneState> {ProfileStyleOneBloc(ProfileStyleOneState initialState) : super(initialState) { on<ProfileStyleOneInitialEvent>(_onInitialize); }

_onInitialize(ProfileStyleOneInitialEvent event, Emitter<ProfileStyleOneState> emit, ) async  {  } 
 }
