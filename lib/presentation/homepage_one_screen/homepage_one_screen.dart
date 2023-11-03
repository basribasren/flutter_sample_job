import '../homepage_one_screen/widgets/userprofile_item_widget.dart';
import 'bloc/homepage_one_bloc.dart';
import 'models/homepage_one_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/presentation/homepage_four_page/homepage_four_page.dart';
import 'package:basri_s_application5/presentation/notifications_page/notifications_page.dart';
import 'package:basri_s_application5/presentation/saved_tab_container_page/saved_tab_container_page.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application5/widgets/custom_bottom_bar.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:basri_s_application5/widgets/custom_icon_button.dart';
import 'package:basri_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class HomepageOneScreen extends StatelessWidget {
  HomepageOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageOneBloc>(
      create: (context) => HomepageOneBloc(HomepageOneState(
        homepageOneModelObj: HomepageOneModel(),
      ))
        ..add(HomepageOneInitialEvent()),
      child: HomepageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildWelcomeBack(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 17.v),
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildSearch(context),
              SizedBox(height: 38.v),
              _buildFeaturedJobs(context),
              SizedBox(height: 8.v),
              _buildFullTime(context),
              SizedBox(height: 31.v),
              _buildRecommendedJobs(context),
              SizedBox(height: 18.v),
              _buildUserProfile(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildWelcomeBack(BuildContext context) {
    return CustomAppBar(
      height: 82.v,
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitleFour(
              text: "lbl_welcome_back".tr,
              margin: EdgeInsets.only(right: 44.h),
            ),
            AppbarSubtitle(
              text: "lbl_john_lucas".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 54.adaptSize,
          width: 54.adaptSize,
          margin: EdgeInsets.only(
            left: 19.h,
            right: 19.h,
            bottom: 5.v,
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
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<HomepageOneBloc, HomepageOneState,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedJobs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildFullTime(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 196.v,
              width: 286.h,
              margin: EdgeInsets.only(bottom: 9.v),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        top: 10.v,
                        right: 6.h,
                      ),
                      child: IntrinsicWidth(
                        child: Container(
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 24.v,
                                  bottom: 20.v,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 200.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 2.v),
                                                child: CustomIconButton(
                                                  height: 46.adaptSize,
                                                  width: 46.adaptSize,
                                                  padding: EdgeInsets.all(12.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .fillOnErrorContainer,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGrommetIconsGoogle,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "msg_product_designer".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumOnErrorContainer,
                                                  ),
                                                  SizedBox(height: 1.v),
                                                  Opacity(
                                                    opacity: 0.75,
                                                    child: Text(
                                                      "lbl_google".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnErrorContainer,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Opacity(
                                          opacity: 0.66,
                                          child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFluentBookmarkAdd20Filled,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 14.h,
                                              top: 3.v,
                                              bottom: 25.v,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 22.v),
                                    SizedBox(
                                      width: 235.h,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.h,
                                              vertical: 3.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillOnErrorContainer1
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder13,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 2.v),
                                                Text(
                                                  "lbl_design".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallOnErrorContainer,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.h,
                                              vertical: 4.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillOnErrorContainer1
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder13,
                                            ),
                                            child: Text(
                                              "lbl_full_time".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnErrorContainer,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 16.h,
                                              vertical: 4.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillOnErrorContainer1
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder13,
                                            ),
                                            child: Text(
                                              "lbl_junior".tr,
                                              style: CustomTextStyles
                                                  .bodySmallOnErrorContainer,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 24.v),
                                    Padding(
                                      padding: EdgeInsets.only(right: 3.h),
                                      child: _buildSix(
                                        context,
                                        price: "lbl_160_00_year".tr,
                                        location: "lbl_california_usa".tr,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 186.v,
                                width: 280.h,
                                margin: EdgeInsets.only(
                                  left: 35.h,
                                  top: 3.v,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 186.v,
                                        width: 280.h,
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.primaryContainer,
                                          borderRadius: BorderRadius.circular(
                                            24.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23.h),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              height: 46.v,
                                              width: 234.h,
                                              child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomIconButton(
                                                          height: 46.adaptSize,
                                                          width: 46.adaptSize,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  12.h),
                                                          decoration:
                                                              IconButtonStyleHelper
                                                                  .fillOnErrorContainer,
                                                          child:
                                                              CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgGrommetIconsGoogle,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 18.h,
                                                            bottom: 3.v,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "msg_full_stack_developer"
                                                                    .tr,
                                                                style: CustomTextStyles
                                                                    .titleMediumCircularStdOnErrorContainer,
                                                              ),
                                                              SizedBox(
                                                                  height: 4.v),
                                                              Opacity(
                                                                opacity: 0.75,
                                                                child: Text(
                                                                  "lbl_google"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodyMediumCircularStdOnErrorContainer14,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Opacity(
                                                    opacity: 0.2,
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBookmark5,
                                                      height: 19.adaptSize,
                                                      width: 19.adaptSize,
                                                      alignment:
                                                          Alignment.topRight,
                                                      margin: EdgeInsets.only(
                                                          top: 4.v),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 25.v),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      bottom: 4.v),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 3.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillOnErrorContainer1
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder13,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 2.v),
                                                      Text(
                                                        "lbl_design".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: CustomTextStyles
                                                            .bodySmallOnErrorContainer,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                CustomElevatedButton(
                                                  height: 26.v,
                                                  width: 82.h,
                                                  text: "lbl_full_time".tr,
                                                  margin: EdgeInsets.only(
                                                      bottom: 4.v),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillOnErrorContainer,
                                                  buttonTextStyle: CustomTextStyles
                                                      .bodySmallOnErrorContainer,
                                                ),
                                                CustomElevatedButton(
                                                  height: 30.v,
                                                  width: 66.h,
                                                  text: "lbl_junior".tr,
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillOnErrorContainer,
                                                  buttonTextStyle: CustomTextStyles
                                                      .bodySmallOnErrorContainer,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20.v),
                                            _buildSix(
                                              context,
                                              price: "lbl_160_00_year".tr,
                                              location: "lbl_california_usa".tr,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupOnerrorcontainer,
                    height: 186.v,
                    width: 279.h,
                    radius: BorderRadius.circular(
                      24.h,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroupOnerrorcontainer192x57,
              height: 192.v,
              width: 57.h,
              margin: EdgeInsets.only(
                left: 7.h,
                top: 13.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecommendedJobs(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 42.h,
        ),
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
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
      height: 164.v,
      child: BlocSelector<HomepageOneBloc, HomepageOneState, HomepageOneModel?>(
        selector: (state) => state.homepageOneModelObj,
        builder: (context, homepageOneModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 15.h,
              );
            },
            itemCount: homepageOneModelObj?.userprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  homepageOneModelObj?.userprofileItemList[index] ??
                      UserprofileItemModel();
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildSix(
    BuildContext context, {
    required String price,
    required String location,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            price,
            textAlign: TextAlign.right,
            style: CustomTextStyles.bodyMediumCircularStdOnErrorContainer14_1
                .copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
        ),
        Text(
          location,
          style: CustomTextStyles.bodyMediumCircularStdOnErrorContainer14_1
              .copyWith(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home31:
        return AppRoutes.homepageFourPage;
      case BottomBarEnum.Message61:
        return "/";
      case BottomBarEnum.Bookmark1:
        return AppRoutes.savedTabContainerPage;
      case BottomBarEnum.Category11:
        return AppRoutes.notificationsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepageFourPage:
        return HomepageFourPage.builder(context);
      case AppRoutes.savedTabContainerPage:
        return SavedTabContainerPage.builder(context);
      case AppRoutes.notificationsPage:
        return NotificationsPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
