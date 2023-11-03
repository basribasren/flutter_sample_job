import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/job_proposal_tab_container_screen/models/job_proposal_tab_container_model.dart';part 'job_proposal_tab_container_event.dart';part 'job_proposal_tab_container_state.dart';/// A bloc that manages the state of a JobProposalTabContainer according to the event that is dispatched to it.
class JobProposalTabContainerBloc extends Bloc<JobProposalTabContainerEvent, JobProposalTabContainerState> {JobProposalTabContainerBloc(JobProposalTabContainerState initialState) : super(initialState) { on<JobProposalTabContainerInitialEvent>(_onInitialize); }

_onInitialize(JobProposalTabContainerInitialEvent event, Emitter<JobProposalTabContainerState> emit, ) async  {  } 
 }
