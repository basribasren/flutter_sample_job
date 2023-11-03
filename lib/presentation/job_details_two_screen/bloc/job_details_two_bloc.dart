import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/job_details_two_screen/models/job_details_two_model.dart';part 'job_details_two_event.dart';part 'job_details_two_state.dart';/// A bloc that manages the state of a JobDetailsTwo according to the event that is dispatched to it.
class JobDetailsTwoBloc extends Bloc<JobDetailsTwoEvent, JobDetailsTwoState> {JobDetailsTwoBloc(JobDetailsTwoState initialState) : super(initialState) { on<JobDetailsTwoInitialEvent>(_onInitialize); }

_onInitialize(JobDetailsTwoInitialEvent event, Emitter<JobDetailsTwoState> emit, ) async  {  } 
 }
