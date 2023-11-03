import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/register_one_screen/models/register_one_model.dart';part 'register_one_event.dart';part 'register_one_state.dart';/// A bloc that manages the state of a RegisterOne according to the event that is dispatched to it.
class RegisterOneBloc extends Bloc<RegisterOneEvent, RegisterOneState> {RegisterOneBloc(RegisterOneState initialState) : super(initialState) { on<RegisterOneInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<RegisterOneState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changePasswordVisibility1(ChangePasswordVisibilityEvent1 event, Emitter<RegisterOneState> emit, ) { emit(state.copyWith(isShowPassword1: event.value)); } 
_onInitialize(RegisterOneInitialEvent event, Emitter<RegisterOneState> emit, ) async  { emit(state.copyWith(userController: TextEditingController(), fullNameController: TextEditingController(), passwordController: TextEditingController(), confirmPasswordController: TextEditingController(), isShowPassword: true, isShowPassword1: true)); } 
 }
