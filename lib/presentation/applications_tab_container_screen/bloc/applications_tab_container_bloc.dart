import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/applications_tab_container_screen/models/applications_tab_container_model.dart';part 'applications_tab_container_event.dart';part 'applications_tab_container_state.dart';/// A bloc that manages the state of a ApplicationsTabContainer according to the event that is dispatched to it.
class ApplicationsTabContainerBloc extends Bloc<ApplicationsTabContainerEvent, ApplicationsTabContainerState> {ApplicationsTabContainerBloc(ApplicationsTabContainerState initialState) : super(initialState) { on<ApplicationsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ApplicationsTabContainerInitialEvent event, Emitter<ApplicationsTabContainerState> emit, ) async  {  } 
 }
