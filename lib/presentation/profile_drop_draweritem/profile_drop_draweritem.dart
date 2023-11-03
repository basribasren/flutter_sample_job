import 'bloc/profile_drop_bloc.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileDropDraweritem extends StatelessWidget {
  const ProfileDropDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 311.h,
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 26.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(left: 66.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 104.adaptSize,
                          width: 104.adaptSize,
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder52,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgChristinaWocin104x104,
                            height: 104.adaptSize,
                            width: 104.adaptSize,
                            radius: BorderRadius.circular(
                              52.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Text(
                          "lbl_haley_jessica".tr,
                          style: CustomTextStyles.titleLargeOnPrimary,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_ux_designer".tr,
                              style: CustomTextStyles.bodySmallGray500_1,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(
                                left: 4.h,
                                top: 2.v,
                                bottom: 4.v,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        left: 41.h,
                        bottom: 144.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "lbl_view_profile".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
            SizedBox(height: 40.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgInfo,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(top: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_personal_info".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFlag,
                    height: 21.v,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_applications".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 20.v,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_proposals".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 26.v),
            Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 21.v,
                    width: 17.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_resumes".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27.v),
            Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup188,
                    height: 18.v,
                    width: 20.h,
                    margin: EdgeInsets.symmetric(vertical: 2.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_portfolio".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                    height: 21.v,
                    width: 16.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_cover_letters".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsGray500,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "lbl_settings".tr,
                      style: CustomTextStyles.bodyMediumOnPrimary15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 18.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup191,
                    height: 16.v,
                    width: 20.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "lbl_logout".tr,
                      style: CustomTextStyles.bodyMediumRedA70001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 53.v),
            CustomElevatedButton(
              text: "lbl_go_premium".tr,
              margin: EdgeInsets.symmetric(horizontal: 35.h),
              leftIcon: Container(
                margin: EdgeInsets.only(right: 11.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup181,
                  height: 24.v,
                  width: 18.h,
                ),
              ),
              buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
