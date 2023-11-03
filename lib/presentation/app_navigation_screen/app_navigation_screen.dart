import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              userName: "Start".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.startScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Frame Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.frameSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set AOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setAoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set ATwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setAtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set AThree".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setAthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set A4 - Get Started".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setA4GetStartedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set BOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setBoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Set B4 - Get Started".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.setB4GetStartedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage Four - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFourContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Homepage Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homepageSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Messages".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messagesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Details".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.jobDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Details Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.jobDetailsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Details Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.jobDetailsThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Apply".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.applyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Apply Success One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applySuccessOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Apply Success Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applySuccessTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Application Tracking".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applicationTrackingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Profile style One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileStyleOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Profile style Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileStyleTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Resume & Portfolio Upload".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resumePortfolioUploadScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Resume & Portfolio Uploading".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resumePortfolioUploadingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Resume & Portfolio Uploaded".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resumePortfolioUploadedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Search option One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchOptionOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Search option Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchOptionTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Seacrh Filter".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.seacrhFilterScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Search option Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchOptionThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Search Result".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Search Result Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.searchResultTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Applications - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.applicationsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Proposal - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.jobProposalTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Solo Company Job Listing".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.soloCompanyJobListingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Solo Category Job Listing".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.soloCategoryJobListingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Settings".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.settingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Register One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Register".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Log in One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Log in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Forgot Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.forgotPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName:
                                  "Forgot Password One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .forgotPasswordOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Verify One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.verifyOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Verify".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.verifyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Reset Password".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Reset Password One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Reset Password Confirmation".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPasswordConfirmationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Type".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.jobTypeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Type One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.jobTypeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Job Preferences Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.jobPreferencesTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Categories".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.categoriesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              userName: "Companies".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.companiesScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String userName,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  userName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
