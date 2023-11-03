import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/job_details_three_screen/models/job_details_three_model.dart';part 'job_details_three_event.dart';part 'job_details_three_state.dart';/// A bloc that manages the state of a JobDetailsThree according to the event that is dispatched to it.
class JobDetailsThreeBloc extends Bloc<JobDetailsThreeEvent, JobDetailsThreeState> {JobDetailsThreeBloc(JobDetailsThreeState initialState) : super(initialState) { on<JobDetailsThreeInitialEvent>(_onInitialize); }

_onInitialize(JobDetailsThreeInitialEvent event, Emitter<JobDetailsThreeState> emit, ) async  {  } 
 }
