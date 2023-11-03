import '../job_proposal_page/widgets/jobproposal_item_widget.dart';
import 'bloc/job_proposal_bloc.dart';
import 'models/job_proposal_model.dart';
import 'models/jobproposal_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class JobProposalPage extends StatefulWidget {
  const JobProposalPage({Key? key})
      : super(
          key: key,
        );

  @override
  JobProposalPageState createState() => JobProposalPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<JobProposalBloc>(
      create: (context) => JobProposalBloc(JobProposalState(
        jobProposalModelObj: JobProposalModel(),
      ))
        ..add(JobProposalInitialEvent()),
      child: JobProposalPage(),
    );
  }
}

class JobProposalPageState extends State<JobProposalPage>
    with AutomaticKeepAliveClientMixin<JobProposalPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.bg,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildJobProposal(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJobProposal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<JobProposalBloc, JobProposalState, JobProposalModel?>(
        selector: (state) => state.jobProposalModelObj,
        builder: (context, jobProposalModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: jobProposalModelObj?.jobproposalItemList.length ?? 0,
            itemBuilder: (context, index) {
              JobproposalItemModel model =
                  jobProposalModelObj?.jobproposalItemList[index] ??
                      JobproposalItemModel();
              return JobproposalItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
