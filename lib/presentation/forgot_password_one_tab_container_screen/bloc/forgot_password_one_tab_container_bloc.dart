import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/forgot_password_one_tab_container_screen/models/forgot_password_one_tab_container_model.dart';part 'forgot_password_one_tab_container_event.dart';part 'forgot_password_one_tab_container_state.dart';/// A bloc that manages the state of a ForgotPasswordOneTabContainer according to the event that is dispatched to it.
class ForgotPasswordOneTabContainerBloc extends Bloc<ForgotPasswordOneTabContainerEvent, ForgotPasswordOneTabContainerState> {ForgotPasswordOneTabContainerBloc(ForgotPasswordOneTabContainerState initialState) : super(initialState) { on<ForgotPasswordOneTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ForgotPasswordOneTabContainerInitialEvent event, Emitter<ForgotPasswordOneTabContainerState> emit, ) async  {  } 
 }
