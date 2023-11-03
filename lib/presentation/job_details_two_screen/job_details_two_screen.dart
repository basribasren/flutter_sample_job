import 'bloc/job_details_two_bloc.dart';import 'models/job_details_two_model.dart';import 'package:basri_s_application5/core/app_export.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_title_image.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application5/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class JobDetailsTwoScreen extends StatelessWidget {const JobDetailsTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<JobDetailsTwoBloc>(create: (context) => JobDetailsTwoBloc(JobDetailsTwoState(jobDetailsTwoModelObj: JobDetailsTwoModel()))..add(JobDetailsTwoInitialEvent()), child: JobDetailsTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<JobDetailsTwoBloc, JobDetailsTwoState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildFiftyFive(context), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 32.v), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), _buildDescription(context), SizedBox(height: 20.v), Container(width: 318.h, margin: EdgeInsets.only(right: 8.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_we_are_the_teams2".tr, style: CustomTextStyles.bodyMediumCircularStdGray500), TextSpan(text: "msg_responsibilities_full".tr, style: CustomTextStyles.bodyMediumCircularStdGray800.copyWith(height: 1.57))]), textAlign: TextAlign.left))]))])), bottomNavigationBar: _buildApplyNow(context)));}); } 
/// Section Widget
Widget _buildFiftyFive(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 16.v), decoration: AppDecoration.outlineSecondaryContainer1, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [CustomAppBar(height: 68.v, leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h, bottom: 44.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitleImage(imagePath: ImageConstant.imgFacebook), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgFluentBookmarkAdd20FilledGray500, margin: EdgeInsets.only(left: 23.h, right: 23.h, bottom: 44.v))]), SizedBox(height: 24.v), Text("msg_software_engineer".tr, style: CustomTextStyles.titleLargeCircularStdOnPrimary), SizedBox(height: 1.v), Text("lbl_facebook".tr, style: CustomTextStyles.bodyMediumCircularStdGray50015), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 48.h, right: 55.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 69.h, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.circleBorder13), child: Text("lbl_design".tr, style: CustomTextStyles.bodySmall11)), Container(width: 82.h, margin: EdgeInsets.only(left: 27.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.circleBorder13), child: Text("lbl_full_time".tr, style: CustomTextStyles.bodySmall11)), Container(width: 66.h, margin: EdgeInsets.only(left: 27.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 4.v), decoration: AppDecoration.fillGray300.copyWith(borderRadius: BorderRadiusStyle.circleBorder13), child: Text("lbl_junior".tr, style: CustomTextStyles.bodySmall11))])), SizedBox(height: 22.v), Padding(padding: EdgeInsets.symmetric(horizontal: 48.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_180_00_year".tr, style: theme.textTheme.titleMedium), Text("lbl_seattle_usa".tr, style: theme.textTheme.titleMedium)]))])); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text("lbl_description".tr, style: CustomTextStyles.bodyMediumCircularStdOnPrimary14)), Padding(padding: EdgeInsets.only(left: 28.h, top: 1.v), child: Text("lbl_requirement".tr, style: CustomTextStyles.bodyMediumCircularStdGray50014)), Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_about".tr, style: CustomTextStyles.bodyMediumCircularStdGray50014)), Padding(padding: EdgeInsets.only(left: 28.h), child: Text("lbl_reviews".tr, style: CustomTextStyles.bodyMediumCircularStdGray50014))]); } 
/// Section Widget
Widget _buildApplyNow(BuildContext context) { return CustomElevatedButton(text: "lbl_apply_now".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 34.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
