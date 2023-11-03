import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/application_tracking_screen/models/application_tracking_model.dart';part 'application_tracking_event.dart';part 'application_tracking_state.dart';/// A bloc that manages the state of a ApplicationTracking according to the event that is dispatched to it.
class ApplicationTrackingBloc extends Bloc<ApplicationTrackingEvent, ApplicationTrackingState> {ApplicationTrackingBloc(ApplicationTrackingState initialState) : super(initialState) { on<ApplicationTrackingInitialEvent>(_onInitialize); }

_onInitialize(ApplicationTrackingInitialEvent event, Emitter<ApplicationTrackingState> emit, ) async  {  } 
 }
