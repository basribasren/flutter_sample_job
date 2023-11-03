import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/apply_success_two_screen/models/apply_success_two_model.dart';part 'apply_success_two_event.dart';part 'apply_success_two_state.dart';/// A bloc that manages the state of a ApplySuccessTwo according to the event that is dispatched to it.
class ApplySuccessTwoBloc extends Bloc<ApplySuccessTwoEvent, ApplySuccessTwoState> {ApplySuccessTwoBloc(ApplySuccessTwoState initialState) : super(initialState) { on<ApplySuccessTwoInitialEvent>(_onInitialize); }

_onInitialize(ApplySuccessTwoInitialEvent event, Emitter<ApplySuccessTwoState> emit, ) async  {  } 
 }
