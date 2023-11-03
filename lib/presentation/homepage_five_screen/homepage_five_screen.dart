import '../homepage_five_screen/widgets/userprofilelist4_item_widget.dart';
import '../homepage_five_screen/widgets/userprofilelist5_item_widget.dart';
import 'bloc/homepage_five_bloc.dart';
import 'models/homepage_five_model.dart';
import 'models/userprofilelist4_item_model.dart';
import 'models/userprofilelist5_item_model.dart';
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

class HomepageFiveScreen extends StatelessWidget {
  HomepageFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomepageFiveBloc>(
      create: (context) => HomepageFiveBloc(HomepageFiveState(
        homepageFiveModelObj: HomepageFiveModel(),
      ))
        ..add(HomepageFiveInitialEvent()),
      child: HomepageFiveScreen(),
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
              SizedBox(height: 40.v),
              _buildPopularJobsRow(context),
              SizedBox(height: 16.v),
              _buildUserProfileList1(context),
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
            left: 24.h,
            top: 1.v,
            right: 24.h,
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
          child: BlocSelector<HomepageFiveBloc, HomepageFiveState,
              TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "msg_search_a_job_or".tr,
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
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 164.v,
      child:
          BlocSelector<HomepageFiveBloc, HomepageFiveState, HomepageFiveModel?>(
        selector: (state) => state.homepageFiveModelObj,
        builder: (context, homepageFiveModelObj) {
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
                homepageFiveModelObj?.userprofilelist4ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofilelist4ItemModel model =
                  homepageFiveModelObj?.userprofilelist4ItemList[index] ??
                      Userprofilelist4ItemModel();
              return Userprofilelist4ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPopularJobsRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 18.h),
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
  Widget _buildUserProfileList1(BuildContext context) {
    return BlocSelector<HomepageFiveBloc, HomepageFiveState,
        HomepageFiveModel?>(
      selector: (state) => state.homepageFiveModelObj,
      builder: (context, homepageFiveModelObj) {
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
          itemCount: homepageFiveModelObj?.userprofilelist5ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist5ItemModel model =
                homepageFiveModelObj?.userprofilelist5ItemList[index] ??
                    Userprofilelist5ItemModel();
            return Userprofilelist5ItemWidget(
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
