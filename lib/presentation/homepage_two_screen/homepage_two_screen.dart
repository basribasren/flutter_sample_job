import '../homepage_two_screen/widgets/it_item_widget.dart';
import '../homepage_two_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/homepage_two_bloc.dart';
import 'models/homepage_two_model.dart';
import 'models/it_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/presentation/homepage_four_page/homepage_four_page.dart';
import 'package:basri_s_application5/presentation/notifications_page/notifications_page.dart';
import 'package:basri_s_application5/presentation/saved_tab_container_page/saved_tab_container_page.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application5/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:basri_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application5/widgets/custom_bottom_bar.dart';
import 'package:basri_s_application5/widgets/custom_icon_button.dart';
import 'package:basri_s_application5/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class HomepageTwoScreen extends StatelessWidget {
  HomepageTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageTwoBloc>(
      create: (context) => HomepageTwoBloc(HomepageTwoState(
        homepageTwoModelObj: HomepageTwoModel(),
      ))
        ..add(HomepageTwoInitialEvent()),
      child: HomepageTwoScreen(),
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
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildSearchRow(context),
              SizedBox(height: 38.v),
              _buildFeaturedJobsRow(context),
              SizedBox(height: 18.v),
              _buildFacebookRow(context),
              SizedBox(height: 42.v),
              _buildPopularJobsRow(context),
              SizedBox(height: 16.v),
              _buildUserProfileList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
              text: "msg_welcome_to_jobseek".tr,
              margin: EdgeInsets.only(right: 32.h),
            ),
            AppbarSubtitle(
              text: "msg_discover_jobs".tr,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 54.adaptSize,
          width: 54.adaptSize,
          margin: EdgeInsets.only(
            left: 21.h,
            top: 1.v,
            right: 21.h,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<HomepageTwoBloc, HomepageTwoState,
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
  Widget _buildFeaturedJobsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_featured_jobs".tr,
            style: theme.textTheme.titleMedium,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.bodyMediumCircularStdGray50014,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebookRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: AppDecoration.outlineBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Container(
                  padding: EdgeInsets.all(20.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroupOnerrorcontainer,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 1.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 207.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                    height: 46.adaptSize,
                                    width: 46.adaptSize,
                                    padding: EdgeInsets.all(12.h),
                                    decoration: IconButtonStyleHelper
                                        .fillOnErrorContainer,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgFacebook,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_software_engineer".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorContainer,
                                        ),
                                        Opacity(
                                          opacity: 0.75,
                                          child: Text(
                                            "lbl_facebook".tr,
                                            style: CustomTextStyles
                                                .bodyMediumOnErrorContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Opacity(
                              opacity: 0.66,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFluentBookmarkAdd20Filled,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  top: 3.v,
                                  bottom: 23.v,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      BlocSelector<HomepageTwoBloc, HomepageTwoState,
                          HomepageTwoModel?>(
                        selector: (state) => state.homepageTwoModelObj,
                        builder: (context, homepageTwoModelObj) {
                          return Wrap(
                            runSpacing: 26.v,
                            spacing: 26.h,
                            children: List<Widget>.generate(
                              homepageTwoModelObj?.itItemList.length ?? 0,
                              (index) {
                                ItItemModel model =
                                    homepageTwoModelObj?.itItemList[index] ??
                                        ItItemModel();

                                return ItItemWidget(
                                  model,
                                  onSelectedChipView: (value) {
                                    context.read<HomepageTwoBloc>().add(
                                        UpdateChipViewEvent(
                                            index: index, isSelected: value));
                                  },
                                );
                              },
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 24.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 1.h,
                        ),
                        child: _buildSix(
                          context,
                          price: "lbl_180_00_year".tr,
                          location: "lbl_california_usa".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.h),
                decoration: AppDecoration.fillTeal.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.h,
                    vertical: 23.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroupOnerrorcontainer,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                    height: 46.adaptSize,
                                    width: 46.adaptSize,
                                    padding: EdgeInsets.all(12.h),
                                    decoration: IconButtonStyleHelper
                                        .fillOnErrorContainer,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgGrommetIconsGoogleOnerror,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 18.h,
                                      bottom: 3.v,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "msg_full_stack_developer".tr,
                                          style: CustomTextStyles
                                              .titleMediumCircularStdOnErrorContainer,
                                        ),
                                        SizedBox(height: 4.v),
                                        Opacity(
                                          opacity: 0.75,
                                          child: Text(
                                            "lbl_google".tr,
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
                                imagePath: ImageConstant.imgBookmark5,
                                height: 19.adaptSize,
                                width: 19.adaptSize,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.only(top: 4.v),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 69.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 3.v,
                              ),
                              decoration:
                                  AppDecoration.fillOnErrorContainer1.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder13,
                              ),
                              child: Text(
                                "lbl_design".tr,
                                style:
                                    CustomTextStyles.bodySmallOnErrorContainer,
                              ),
                            ),
                            Container(
                              width: 82.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 4.v,
                              ),
                              decoration:
                                  AppDecoration.fillOnErrorContainer1.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder13,
                              ),
                              child: Text(
                                "lbl_full_time".tr,
                                style:
                                    CustomTextStyles.bodySmallOnErrorContainer,
                              ),
                            ),
                            Container(
                              width: 66.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.h,
                                vertical: 4.v,
                              ),
                              decoration:
                                  AppDecoration.fillOnErrorContainer1.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder13,
                              ),
                              child: Text(
                                "lbl_junior".tr,
                                style:
                                    CustomTextStyles.bodySmallOnErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildSix(
                          context,
                          price: "lbl_160_00_year".tr,
                          location: "lbl_texas".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularJobsRow(BuildContext context) {
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
              "lbl_popular_jobs".tr,
              style: theme.textTheme.titleMedium,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
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
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: BlocSelector<HomepageTwoBloc, HomepageTwoState, HomepageTwoModel?>(
        selector: (state) => state.homepageTwoModelObj,
        builder: (context, homepageTwoModelObj) {
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
            itemCount: homepageTwoModelObj?.userprofilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  homepageTwoModelObj?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
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
