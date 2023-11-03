import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/log_in_one_screen/models/log_in_one_model.dart';part 'log_in_one_event.dart';part 'log_in_one_state.dart';/// A bloc that manages the state of a LogInOne according to the event that is dispatched to it.
class LogInOneBloc extends Bloc<LogInOneEvent, LogInOneState> {LogInOneBloc(LogInOneState initialState) : super(initialState) { on<LogInOneInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LogInOneState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(LogInOneInitialEvent event, Emitter<LogInOneState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
