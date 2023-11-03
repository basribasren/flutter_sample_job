import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/job_type_screen/models/job_type_model.dart';part 'job_type_event.dart';part 'job_type_state.dart';/// A bloc that manages the state of a JobType according to the event that is dispatched to it.
class JobTypeBloc extends Bloc<JobTypeEvent, JobTypeState> {JobTypeBloc(JobTypeState initialState) : super(initialState) { on<JobTypeInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); on<ChangeRadioButton1Event>(_changeRadioButton1); on<ChangeRadioButton2Event>(_changeRadioButton2); on<ChangeRadioButton3Event>(_changeRadioButton3); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<JobTypeState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_changeRadioButton1(ChangeRadioButton1Event event, Emitter<JobTypeState> emit, ) { emit(state.copyWith(radioGroup1: event.value)); } 
_changeRadioButton2(ChangeRadioButton2Event event, Emitter<JobTypeState> emit, ) { emit(state.copyWith(radioGroup2: event.value)); } 
_changeRadioButton3(ChangeRadioButton3Event event, Emitter<JobTypeState> emit, ) { emit(state.copyWith(radioGroup3: event.value)); } 
_onInitialize(JobTypeInitialEvent event, Emitter<JobTypeState> emit, ) async  { emit(state.copyWith(radioGroup: "", radioGroup1: "", radioGroup2: "", radioGroup3: "")); } 
 }
