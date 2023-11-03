import '../homepage_three_screen/widgets/userprofilelist1_item_widget.dart';
import '../homepage_three_screen/widgets/userprofilestack_item_widget.dart';
import 'bloc/homepage_three_bloc.dart';
import 'models/homepage_three_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'models/userprofilestack_item_model.dart';
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
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomepageThreeScreen extends StatelessWidget {
  HomepageThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageThreeBloc>(
      create: (context) => HomepageThreeBloc(HomepageThreeState(
        homepageThreeModelObj: HomepageThreeModel(),
      ))
        ..add(HomepageThreeInitialEvent()),
      child: HomepageThreeScreen(),
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
            vertical: 16.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildSearchRow(context),
              SizedBox(height: 38.v),
              _buildFeaturedJobsRow(context),
              SizedBox(height: 18.v),
              _buildUserProfileStack(context),
              SizedBox(height: 20.v),
              BlocBuilder<HomepageThreeBloc, HomepageThreeState>(
                builder: (context, state) {
                  return SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: state.sliderIndex,
                      count: state.homepageThreeModelObj
                              ?.userprofilestackItemList.length ??
                          0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: appTheme.gray300,
                        dotHeight: 8.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 44.v),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: BlocSelector<HomepageThreeBloc, HomepageThreeState,
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
  Widget _buildUserProfileStack(BuildContext context) {
    return BlocBuilder<HomepageThreeBloc, HomepageThreeState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 156.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              state.sliderIndex = index;
            },
          ),
          itemCount:
              state.homepageThreeModelObj?.userprofilestackItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            UserprofilestackItemModel model =
                state.homepageThreeModelObj?.userprofilestackItemList[index] ??
                    UserprofilestackItemModel();
            return UserprofilestackItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPopularJobsRow(BuildContext context) {
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<HomepageThreeBloc, HomepageThreeState,
        HomepageThreeModel?>(
      selector: (state) => state.homepageThreeModelObj,
      builder: (context, homepageThreeModelObj) {
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
          itemCount:
              homepageThreeModelObj?.userprofilelist1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist1ItemModel model =
                homepageThreeModelObj?.userprofilelist1ItemList[index] ??
                    Userprofilelist1ItemModel();
            return Userprofilelist1ItemWidget(
              model,
            );
          },
        );
      },
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
