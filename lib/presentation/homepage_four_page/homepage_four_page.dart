import '../homepage_four_page/widgets/userprofilelist2_item_widget.dart';
import '../homepage_four_page/widgets/userprofilelist3_item_widget.dart';
import 'bloc/homepage_four_bloc.dart';
import 'models/homepage_four_model.dart';
import 'models/userprofilelist2_item_model.dart';
import 'models/userprofilelist3_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application5/widgets/custom_icon_button.dart';
import 'package:basri_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomepageFourPage extends StatelessWidget {
  const HomepageFourPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageFourBloc>(
      create: (context) => HomepageFourBloc(HomepageFourState(
        homepageFourModelObj: HomepageFourModel(),
      ))
        ..add(HomepageFourInitialEvent()),
      child: HomepageFourPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 36.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSearchRow(context),
              SizedBox(height: 38.v),
              _buildFeaturedJobsRow(context),
              SizedBox(height: 18.v),
              _buildUserProfileList(context),
              SizedBox(height: 38.v),
              _buildRecommendedJobsRow(context),
              SizedBox(height: 18.v),
              _buildUserProfileList1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitleFour(
              text: "lbl_welcome_back".tr,
              margin: EdgeInsets.only(right: 49.h),
            ),
            AppbarSubtitle(
              text: "lbl_rifat_sarkar".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 54.adaptSize,
          width: 54.adaptSize,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 1.v,
            right: 25.h,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse,
                height: 54.adaptSize,
                width: 54.adaptSize,
                radius: BorderRadius.circular(
                  27.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 38.h,
                    top: 4.v,
                    bottom: 34.v,
                  ),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.bg.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.redA700,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BlocSelector<HomepageFourBloc, HomepageFourState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "msg_search_a_job_or".tr,
                hintStyle: CustomTextStyles.bodyMediumGray50015,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(11.h),
            decoration: IconButtonStyleHelper.fillBlueGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgFilter5,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFeaturedJobsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_featured_jobs".tr,
          style: theme.textTheme.titleMedium,
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "lbl_see_all".tr,
            style: CustomTextStyles.bodyMediumGray500_1,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<HomepageFourBloc, HomepageFourState,
        HomepageFourModel?>(
      selector: (state) => state.homepageFourModelObj,
      builder: (context, homepageFourModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 17.v,
            );
          },
          itemCount: homepageFourModelObj?.userprofilelist2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist2ItemModel model =
                homepageFourModelObj?.userprofilelist2ItemList[index] ??
                    Userprofilelist2ItemModel();
            return Userprofilelist2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRecommendedJobsRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "msg_recommended_jobs".tr,
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.bodyMediumGray500_1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList1(BuildContext context) {
    return SizedBox(
      height: 164.v,
      child:
          BlocSelector<HomepageFourBloc, HomepageFourState, HomepageFourModel?>(
        selector: (state) => state.homepageFourModelObj,
        builder: (context, homepageFourModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 15.h,
              );
            },
            itemCount:
                homepageFourModelObj?.userprofilelist3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofilelist3ItemModel model =
                  homepageFourModelObj?.userprofilelist3ItemList[index] ??
                      Userprofilelist3ItemModel();
              return Userprofilelist3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
