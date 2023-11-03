// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'jobproposal_item_model.dart';/// This class defines the variables used in the [job_proposal_page],
/// and is typically used to hold data that is passed between different parts of the application.
class JobProposalModel extends Equatable {JobProposalModel({this.jobproposalItemList = const []}) {  }

List<JobproposalItemModel> jobproposalItemList;

JobProposalModel copyWith({List<JobproposalItemModel>? jobproposalItemList}) { return JobProposalModel(
jobproposalItemList : jobproposalItemList ?? this.jobproposalItemList,
); } 
@override List<Object?> get props => [jobproposalItemList];
 }
