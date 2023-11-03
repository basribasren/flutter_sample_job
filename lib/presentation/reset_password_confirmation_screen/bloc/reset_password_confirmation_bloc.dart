import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/reset_password_confirmation_screen/models/reset_password_confirmation_model.dart';part 'reset_password_confirmation_event.dart';part 'reset_password_confirmation_state.dart';/// A bloc that manages the state of a ResetPasswordConfirmation according to the event that is dispatched to it.
class ResetPasswordConfirmationBloc extends Bloc<ResetPasswordConfirmationEvent, ResetPasswordConfirmationState> {ResetPasswordConfirmationBloc(ResetPasswordConfirmationState initialState) : super(initialState) { on<ResetPasswordConfirmationInitialEvent>(_onInitialize); }

_onInitialize(ResetPasswordConfirmationInitialEvent event, Emitter<ResetPasswordConfirmationState> emit, ) async  {  } 
 }
