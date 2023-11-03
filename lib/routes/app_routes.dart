import 'package:flutter/material.dart';
import 'package:basri_s_application5/presentation/start_screen/start_screen.dart';
import 'package:basri_s_application5/presentation/frame_six_screen/frame_six_screen.dart';
import 'package:basri_s_application5/presentation/set_aone_screen/set_aone_screen.dart';
import 'package:basri_s_application5/presentation/set_atwo_screen/set_atwo_screen.dart';
import 'package:basri_s_application5/presentation/set_athree_screen/set_athree_screen.dart';
import 'package:basri_s_application5/presentation/set_a4_get_started_screen/set_a4_get_started_screen.dart';
import 'package:basri_s_application5/presentation/set_bone_screen/set_bone_screen.dart';
import 'package:basri_s_application5/presentation/set_b4_get_started_screen/set_b4_get_started_screen.dart';
import 'package:basri_s_application5/presentation/homepage_one_screen/homepage_one_screen.dart';
import 'package:basri_s_application5/presentation/homepage_two_screen/homepage_two_screen.dart';
import 'package:basri_s_application5/presentation/homepage_three_screen/homepage_three_screen.dart';
import 'package:basri_s_application5/presentation/homepage_four_container_screen/homepage_four_container_screen.dart';
import 'package:basri_s_application5/presentation/homepage_five_screen/homepage_five_screen.dart';
import 'package:basri_s_application5/presentation/homepage_six_screen/homepage_six_screen.dart';
import 'package:basri_s_application5/presentation/messages_screen/messages_screen.dart';
import 'package:basri_s_application5/presentation/job_details_screen/job_details_screen.dart';
import 'package:basri_s_application5/presentation/job_details_two_screen/job_details_two_screen.dart';
import 'package:basri_s_application5/presentation/job_details_three_screen/job_details_three_screen.dart';
import 'package:basri_s_application5/presentation/apply_screen/apply_screen.dart';
import 'package:basri_s_application5/presentation/apply_success_one_screen/apply_success_one_screen.dart';
import 'package:basri_s_application5/presentation/apply_success_two_screen/apply_success_two_screen.dart';
import 'package:basri_s_application5/presentation/application_tracking_screen/application_tracking_screen.dart';
import 'package:basri_s_application5/presentation/profile_style_one_screen/profile_style_one_screen.dart';
import 'package:basri_s_application5/presentation/profile_style_two_screen/profile_style_two_screen.dart';
import 'package:basri_s_application5/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:basri_s_application5/presentation/resume_portfolio_uploading_screen/resume_portfolio_uploading_screen.dart';
import 'package:basri_s_application5/presentation/resume_portfolio_uploaded_screen/resume_portfolio_uploaded_screen.dart';
import 'package:basri_s_application5/presentation/search_option_one_screen/search_option_one_screen.dart';
import 'package:basri_s_application5/presentation/search_option_two_screen/search_option_two_screen.dart';
import 'package:basri_s_application5/presentation/seacrh_filter_screen/seacrh_filter_screen.dart';
import 'package:basri_s_application5/presentation/search_option_three_screen/search_option_three_screen.dart';
import 'package:basri_s_application5/presentation/search_result_screen/search_result_screen.dart';
import 'package:basri_s_application5/presentation/search_result_two_screen/search_result_two_screen.dart';
import 'package:basri_s_application5/presentation/applications_tab_container_screen/applications_tab_container_screen.dart';
import 'package:basri_s_application5/presentation/job_proposal_tab_container_screen/job_proposal_tab_container_screen.dart';
import 'package:basri_s_application5/presentation/solo_company_job_listing_screen/solo_company_job_listing_screen.dart';
import 'package:basri_s_application5/presentation/solo_category_job_listing_screen/solo_category_job_listing_screen.dart';
import 'package:basri_s_application5/presentation/settings_screen/settings_screen.dart';
import 'package:basri_s_application5/presentation/register_one_screen/register_one_screen.dart';
import 'package:basri_s_application5/presentation/register_screen/register_screen.dart';
import 'package:basri_s_application5/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:basri_s_application5/presentation/log_in_screen/log_in_screen.dart';
import 'package:basri_s_application5/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:basri_s_application5/presentation/forgot_password_one_tab_container_screen/forgot_password_one_tab_container_screen.dart';
import 'package:basri_s_application5/presentation/verify_one_screen/verify_one_screen.dart';
import 'package:basri_s_application5/presentation/verify_screen/verify_screen.dart';
import 'package:basri_s_application5/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:basri_s_application5/presentation/reset_password_one_screen/reset_password_one_screen.dart';
import 'package:basri_s_application5/presentation/reset_password_confirmation_screen/reset_password_confirmation_screen.dart';
import 'package:basri_s_application5/presentation/job_type_screen/job_type_screen.dart';
import 'package:basri_s_application5/presentation/job_type_one_screen/job_type_one_screen.dart';
import 'package:basri_s_application5/presentation/job_preferences_two_screen/job_preferences_two_screen.dart';
import 'package:basri_s_application5/presentation/categories_screen/categories_screen.dart';
import 'package:basri_s_application5/presentation/companies_screen/companies_screen.dart';
import 'package:basri_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String frameSixScreen = '/frame_six_screen';

  static const String setAoneScreen = '/set_aone_screen';

  static const String setAtwoScreen = '/set_atwo_screen';

  static const String setAthreeScreen = '/set_athree_screen';

  static const String setA4GetStartedScreen = '/set_a4_get_started_screen';

  static const String setBoneScreen = '/set_bone_screen';

  static const String setB4GetStartedScreen = '/set_b4_get_started_screen';

  static const String homepageOneScreen = '/homepage_one_screen';

  static const String homepageTwoScreen = '/homepage_two_screen';

  static const String homepageThreeScreen = '/homepage_three_screen';

  static const String homepageFourPage = '/homepage_four_page';

  static const String homepageFourContainerScreen =
      '/homepage_four_container_screen';

  static const String homepageFiveScreen = '/homepage_five_screen';

  static const String homepageSixScreen = '/homepage_six_screen';

  static const String messagesScreen = '/messages_screen';

  static const String notificationsPage = '/notifications_page';

  static const String jobDetailsScreen = '/job_details_screen';

  static const String jobDetailsTwoScreen = '/job_details_two_screen';

  static const String jobDetailsThreeScreen = '/job_details_three_screen';

  static const String applyScreen = '/apply_screen';

  static const String applySuccessOneScreen = '/apply_success_one_screen';

  static const String applySuccessTwoScreen = '/apply_success_two_screen';

  static const String applicationTrackingScreen =
      '/application_tracking_screen';

  static const String profileStyleOneScreen = '/profile_style_one_screen';

  static const String profileStyleTwoScreen = '/profile_style_two_screen';

  static const String resumePortfolioUploadScreen =
      '/resume_portfolio_upload_screen';

  static const String resumePortfolioUploadingScreen =
      '/resume_portfolio_uploading_screen';

  static const String resumePortfolioUploadedScreen =
      '/resume_portfolio_uploaded_screen';

  static const String searchOptionOneScreen = '/search_option_one_screen';

  static const String searchOptionTwoScreen = '/search_option_two_screen';

  static const String seacrhFilterScreen = '/seacrh_filter_screen';

  static const String searchOptionThreeScreen = '/search_option_three_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultTwoScreen = '/search_result_two_screen';

  static const String applicationsPage = '/applications_page';

  static const String applicationsTabContainerScreen =
      '/applications_tab_container_screen';

  static const String savedPage = '/saved_page';

  static const String savedTabContainerPage = '/saved_tab_container_page';

  static const String jobProposalPage = '/job_proposal_page';

  static const String jobProposalTabContainerScreen =
      '/job_proposal_tab_container_screen';

  static const String soloCompanyJobListingScreen =
      '/solo_company_job_listing_screen';

  static const String soloCategoryJobListingScreen =
      '/solo_category_job_listing_screen';

  static const String settingsScreen = '/settings_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String registerScreen = '/register_screen';

  static const String logInOneScreen = '/log_in_one_screen';

  static const String logInScreen = '/log_in_screen';

  static const String forgotPasswordTwoPage = '/forgot_password_two_page';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordOnePage = '/forgot_password_one_page';

  static const String forgotPasswordOneTabContainerScreen =
      '/forgot_password_one_tab_container_screen';

  static const String verifyOneScreen = '/verify_one_screen';

  static const String verifyScreen = '/verify_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordOneScreen = '/reset_password_one_screen';

  static const String forgotPasswordThreePage = '/forgot_password_three_page';

  static const String resetPasswordConfirmationScreen =
      '/reset_password_confirmation_screen';

  static const String jobTypeScreen = '/job_type_screen';

  static const String jobTypeOneScreen = '/job_type_one_screen';

  static const String jobPreferencesTwoScreen = '/job_preferences_two_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String companiesScreen = '/companies_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        frameSixScreen: FrameSixScreen.builder,
        setAoneScreen: SetAoneScreen.builder,
        setAtwoScreen: SetAtwoScreen.builder,
        setAthreeScreen: SetAthreeScreen.builder,
        setA4GetStartedScreen: SetA4GetStartedScreen.builder,
        setBoneScreen: SetBoneScreen.builder,
        setB4GetStartedScreen: SetB4GetStartedScreen.builder,
        homepageOneScreen: HomepageOneScreen.builder,
        homepageTwoScreen: HomepageTwoScreen.builder,
        homepageThreeScreen: HomepageThreeScreen.builder,
        homepageFourContainerScreen: HomepageFourContainerScreen.builder,
        homepageFiveScreen: HomepageFiveScreen.builder,
        homepageSixScreen: HomepageSixScreen.builder,
        messagesScreen: MessagesScreen.builder,
        jobDetailsScreen: JobDetailsScreen.builder,
        jobDetailsTwoScreen: JobDetailsTwoScreen.builder,
        jobDetailsThreeScreen: JobDetailsThreeScreen.builder,
        applyScreen: ApplyScreen.builder,
        applySuccessOneScreen: ApplySuccessOneScreen.builder,
        applySuccessTwoScreen: ApplySuccessTwoScreen.builder,
        applicationTrackingScreen: ApplicationTrackingScreen.builder,
        profileStyleOneScreen: ProfileStyleOneScreen.builder,
        profileStyleTwoScreen: ProfileStyleTwoScreen.builder,
        resumePortfolioUploadScreen: ResumePortfolioUploadScreen.builder,
        resumePortfolioUploadingScreen: ResumePortfolioUploadingScreen.builder,
        resumePortfolioUploadedScreen: ResumePortfolioUploadedScreen.builder,
        searchOptionOneScreen: SearchOptionOneScreen.builder,
        searchOptionTwoScreen: SearchOptionTwoScreen.builder,
        seacrhFilterScreen: SeacrhFilterScreen.builder,
        searchOptionThreeScreen: SearchOptionThreeScreen.builder,
        searchResultScreen: SearchResultScreen.builder,
        searchResultTwoScreen: SearchResultTwoScreen.builder,
        applicationsTabContainerScreen: ApplicationsTabContainerScreen.builder,
        jobProposalTabContainerScreen: JobProposalTabContainerScreen.builder,
        soloCompanyJobListingScreen: SoloCompanyJobListingScreen.builder,
        soloCategoryJobListingScreen: SoloCategoryJobListingScreen.builder,
        settingsScreen: SettingsScreen.builder,
        registerOneScreen: RegisterOneScreen.builder,
        registerScreen: RegisterScreen.builder,
        logInOneScreen: LogInOneScreen.builder,
        logInScreen: LogInScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordOneTabContainerScreen:
            ForgotPasswordOneTabContainerScreen.builder,
        verifyOneScreen: VerifyOneScreen.builder,
        verifyScreen: VerifyScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        resetPasswordOneScreen: ResetPasswordOneScreen.builder,
        resetPasswordConfirmationScreen:
            ResetPasswordConfirmationScreen.builder,
        jobTypeScreen: JobTypeScreen.builder,
        jobTypeOneScreen: JobTypeOneScreen.builder,
        jobPreferencesTwoScreen: JobPreferencesTwoScreen.builder,
        categoriesScreen: CategoriesScreen.builder,
        companiesScreen: CompaniesScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartScreen.builder
      };
}
