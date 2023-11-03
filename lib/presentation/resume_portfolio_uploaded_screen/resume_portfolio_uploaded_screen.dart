import '../resume_portfolio_uploaded_screen/widgets/widget2_item_widget.dart';import 'bloc/resume_portfolio_uploaded_bloc.dart';import 'models/resume_portfolio_uploaded_model.dart';import 'models/widget2_item_model.dart';import 'package:basri_s_application5/core/app_export.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_five.dart';import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_two.dart';import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application5/widgets/custom_elevated_button.dart';import 'package:basri_s_application5/widgets/custom_icon_button.dart';import 'package:dotted_border/dotted_border.dart';import 'package:flutter/material.dart';class ResumePortfolioUploadedScreen extends StatelessWidget {const ResumePortfolioUploadedScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ResumePortfolioUploadedBloc>(create: (context) => ResumePortfolioUploadedBloc(ResumePortfolioUploadedState(resumePortfolioUploadedModelObj: ResumePortfolioUploadedModel()))..add(ResumePortfolioUploadedInitialEvent()), child: ResumePortfolioUploadedScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 30.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_resume_or_cv".tr, style: theme.textTheme.titleMedium), SizedBox(height: 22.v), _buildAddMore(context), SizedBox(height: 48.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_portfolio2".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_optional".tr, style: CustomTextStyles.bodyLargeOnPrimaryContainer)]), textAlign: TextAlign.left), SizedBox(height: 19.v), _buildWidget(context), SizedBox(height: 9.v)])), bottomNavigationBar: _buildSave(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 36.v, leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 18.h, top: 6.v, bottom: 6.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_resume_portfolio".tr), actions: [AppbarSubtitleFive(text: "lbl_skip".tr, margin: EdgeInsets.fromLTRB(24.h, 8.v, 24.h, 7.v))], styleType: Style.bgFill); } 
/// Section Widget
Widget _buildAddMore(BuildContext context) { return DottedBorder(color: theme.colorScheme.primary, padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v), strokeWidth: 1.h, radius: Radius.circular(24), borderType: BorderType.RRect, dashPattern: [12, 6], child: Container(width: 327.h, padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 39.v), decoration: AppDecoration.outlinePrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder24), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 201.h, margin: EdgeInsets.only(left: 37.h, right: 36.h), child: Text("msg_upload_your_cv_or".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.bodyMediumGray500_1.copyWith(height: 1.60))), SizedBox(height: 18.v), SizedBox(height: 85.v, width: 269.h, child: Stack(alignment: Alignment.topRight, children: [Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(top: 12.v, right: 6.h), padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v), decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder13), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgFile, height: 41.v, width: 33.h), Padding(padding: EdgeInsets.only(right: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_rifat_cv_ux_designer".tr, style: CustomTextStyles.bodyMediumOnPrimary14), SizedBox(height: 1.v), Text("lbl_287_kb".tr, style: CustomTextStyles.bodySmallGray50011)]))]))), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.outlineBlueGray, alignment: Alignment.topRight, child: CustomImageView(imagePath: ImageConstant.imgArrowRight))])), SizedBox(height: 32.v), CustomElevatedButton(width: 184.h, text: "lbl_add_more".tr)]))); } 
/// Section Widget
Widget _buildWidget(BuildContext context) { return BlocSelector<ResumePortfolioUploadedBloc, ResumePortfolioUploadedState, ResumePortfolioUploadedModel?>(selector: (state) => state.resumePortfolioUploadedModelObj, builder: (context, resumePortfolioUploadedModelObj) {return Wrap(runSpacing: 15.v, spacing: 15.h, children: List<Widget>.generate(resumePortfolioUploadedModelObj?.widget2ItemList.length ?? 0, (index) {Widget2ItemModel model = resumePortfolioUploadedModelObj?.widget2ItemList[index] ?? Widget2ItemModel(); return Widget2ItemWidget(model, onSelectedChipView: (value) {context.read<ResumePortfolioUploadedBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));}); } 
/// Section Widget
Widget _buildSave(BuildContext context) { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 42.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
