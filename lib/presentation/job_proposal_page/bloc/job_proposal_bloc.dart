import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/jobproposal_item_model.dart';
import 'package:basri_s_application5/presentation/job_proposal_page/models/job_proposal_model.dart';
part 'job_proposal_event.dart';
part 'job_proposal_state.dart';

/// A bloc that manages the state of a JobProposal according to the event that is dispatched to it.
class JobProposalBloc extends Bloc<JobProposalEvent, JobProposalState> {
  JobProposalBloc(JobProposalState initialState) : super(initialState) {
    on<JobProposalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    JobProposalInitialEvent event,
    Emitter<JobProposalState> emit,
  ) async {
    emit(state.copyWith(
        jobProposalModelObj: state.jobProposalModelObj?.copyWith(
      jobproposalItemList: fillJobproposalItemList(),
    )));
  }

  List<JobproposalItemModel> fillJobproposalItemList() {
    return [
      JobproposalItemModel(
          jrExecutive: ImageConstant.imgGoogle,
          userImage: "Jr Executive",
          salary: "115,000/y",
          companyName: "Google",
          location: "Los Angels, US",
          negotiable: "Negotiable",
          joiningDate: "Joining: 13/05/22"),
      JobproposalItemModel(
          jrExecutive: ImageConstant.imgImage4,
          userImage: "Jr Executive",
          salary: "105,000/y",
          companyName: "Spotify",
          location: "Los Angels, US",
          negotiable: "Negotiable",
          joiningDate: "Joining: 13/05/22"),
      JobproposalItemModel(
          userImage: "Jr Executive",
          salary: "125,000/y",
          companyName: "Behance",
          location: "Los Angels, US",
          negotiable: "Non-Negotiable",
          joiningDate: "Joining: 13/05/22"),
      JobproposalItemModel(
          userImage: "Jr Executive",
          salary: "85,000/y",
          companyName: "Macdonald",
          location: "Los Angels, US",
          negotiable: "Negotiable",
          joiningDate: "Joining: 13/05/22")
    ];
  }
}
