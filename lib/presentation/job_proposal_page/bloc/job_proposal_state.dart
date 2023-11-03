// ignore_for_file: must_be_immutable

part of 'job_proposal_bloc.dart';

/// Represents the state of JobProposal in the application.
class JobProposalState extends Equatable {
  JobProposalState({this.jobProposalModelObj});

  JobProposalModel? jobProposalModelObj;

  @override
  List<Object?> get props => [
        jobProposalModelObj,
      ];
  JobProposalState copyWith({JobProposalModel? jobProposalModelObj}) {
    return JobProposalState(
      jobProposalModelObj: jobProposalModelObj ?? this.jobProposalModelObj,
    );
  }
}
