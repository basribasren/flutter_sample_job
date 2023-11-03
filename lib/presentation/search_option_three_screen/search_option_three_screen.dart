import 'bloc/search_option_three_bloc.dart';
import 'models/search_option_three_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SearchOptionThreeScreen extends StatelessWidget {
  const SearchOptionThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchOptionThreeBloc>(
      create: (context) => SearchOptionThreeBloc(SearchOptionThreeState(
        searchOptionThreeModelObj: SearchOptionThreeModel(),
      ))
        ..add(SearchOptionThreeInitialEvent()),
      child: SearchOptionThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SearchOptionThreeBloc, SearchOptionThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 17.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchEleven(context),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_design".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_designer".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_design_lead".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_developer".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "msg_ux_design_director".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "msg_ux_design_researcher".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "msg_ux_developer_lead".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_researcher".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(left: 54.h),
                    child: Text(
                      "lbl_ux_testing".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowRight,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 16.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchEleven(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSearch11Onprimarycontainer,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "lbl_ux".tr,
                    style: CustomTextStyles.bodyMediumOnPrimary15,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 52.v,
          width: 48.h,
          margin: EdgeInsets.only(left: 16.h),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 12.v,
          ),
          decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder13,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgFilter5,
            height: 26.adaptSize,
            width: 26.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
