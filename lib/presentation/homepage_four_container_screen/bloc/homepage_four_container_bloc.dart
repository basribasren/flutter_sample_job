import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/homepage_four_container_screen/models/homepage_four_container_model.dart';part 'homepage_four_container_event.dart';part 'homepage_four_container_state.dart';/// A bloc that manages the state of a HomepageFourContainer according to the event that is dispatched to it.
class HomepageFourContainerBloc extends Bloc<HomepageFourContainerEvent, HomepageFourContainerState> {HomepageFourContainerBloc(HomepageFourContainerState initialState) : super(initialState) { on<HomepageFourContainerInitialEvent>(_onInitialize); }

_onInitialize(HomepageFourContainerInitialEvent event, Emitter<HomepageFourContainerState> emit, ) async  {  } 
 }
