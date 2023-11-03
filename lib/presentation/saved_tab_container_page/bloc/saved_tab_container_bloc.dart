import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/saved_tab_container_page/models/saved_tab_container_model.dart';part 'saved_tab_container_event.dart';part 'saved_tab_container_state.dart';/// A bloc that manages the state of a SavedTabContainer according to the event that is dispatched to it.
class SavedTabContainerBloc extends Bloc<SavedTabContainerEvent, SavedTabContainerState> {SavedTabContainerBloc(SavedTabContainerState initialState) : super(initialState) { on<SavedTabContainerInitialEvent>(_onInitialize); }

_onInitialize(SavedTabContainerInitialEvent event, Emitter<SavedTabContainerState> emit, ) async  {  } 
 }
