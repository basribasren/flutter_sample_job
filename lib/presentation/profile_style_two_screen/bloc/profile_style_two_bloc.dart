import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/profile_style_two_screen/models/profile_style_two_model.dart';part 'profile_style_two_event.dart';part 'profile_style_two_state.dart';/// A bloc that manages the state of a ProfileStyleTwo according to the event that is dispatched to it.
class ProfileStyleTwoBloc extends Bloc<ProfileStyleTwoEvent, ProfileStyleTwoState> {ProfileStyleTwoBloc(ProfileStyleTwoState initialState) : super(initialState) { on<ProfileStyleTwoInitialEvent>(_onInitialize); }

_onInitialize(ProfileStyleTwoInitialEvent event, Emitter<ProfileStyleTwoState> emit, ) async  {  } 
 }
