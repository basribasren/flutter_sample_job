import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/apply_screen/models/apply_model.dart';part 'apply_event.dart';part 'apply_state.dart';/// A bloc that manages the state of a Apply according to the event that is dispatched to it.
class ApplyBloc extends Bloc<ApplyEvent, ApplyState> {ApplyBloc(ApplyState initialState) : super(initialState) { on<ApplyInitialEvent>(_onInitialize); }

_onInitialize(ApplyInitialEvent event, Emitter<ApplyState> emit, ) async  { emit(state.copyWith(coverLetterController: TextEditingController())); } 
 }
