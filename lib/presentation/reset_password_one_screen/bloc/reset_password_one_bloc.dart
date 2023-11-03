import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/reset_password_one_screen/models/reset_password_one_model.dart';part 'reset_password_one_event.dart';part 'reset_password_one_state.dart';/// A bloc that manages the state of a ResetPasswordOne according to the event that is dispatched to it.
class ResetPasswordOneBloc extends Bloc<ResetPasswordOneEvent, ResetPasswordOneState> {ResetPasswordOneBloc(ResetPasswordOneState initialState) : super(initialState) { on<ResetPasswordOneInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<ResetPasswordOneState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<ResetPasswordOneState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(ResetPasswordOneInitialEvent event, Emitter<ResetPasswordOneState> emit, ) async  { emit(state.copyWith(group196Controller: TextEditingController(), enusEnvitoController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }
