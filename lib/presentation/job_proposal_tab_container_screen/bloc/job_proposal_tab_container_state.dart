// ignore_for_file: must_be_immutable

part of 'job_proposal_tab_container_bloc.dart';

/// Represents the state of JobProposalTabContainer in the application.
class JobProposalTabContainerState extends Equatable {
  JobProposalTabContainerState({this.jobProposalTabContainerModelObj});

  JobProposalTabContainerModel? jobProposalTabContainerModelObj;

  @override
  List<Object?> get props => [
        jobProposalTabContainerModelObj,
      ];
  JobProposalTabContainerState copyWith(
      {JobProposalTabContainerModel? jobProposalTabContainerModelObj}) {
    return JobProposalTabContainerState(
      jobProposalTabContainerModelObj: jobProposalTabContainerModelObj ??
          this.jobProposalTabContainerModelObj,
    );
  }
}
