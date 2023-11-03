import '../models/userprofilestack_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilestackItemWidget extends StatelessWidget {
  UserprofilestackItemWidget(
    this.userprofilestackItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilestackItemModel userprofilestackItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.outlineBlueA200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupOnerrorcontainer,
                height: 156.v,
                width: 326.h,
                radius: BorderRadius.circular(
                  24.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                right: 20.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 193.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: CustomIconButton(
                                  height: 46.adaptSize,
                                  width: 46.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration: IconButtonStyleHelper
                                      .fillOnErrorContainer,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup43,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_junior_executive".tr,
                                    style: CustomTextStyles
                                        .titleMediumOnErrorContainer,
                                  ),
                                  SizedBox(height: 3.v),
                                  Opacity(
                                    opacity: 0.75,
                                    child: Text(
                                      "lbl_shell_plc".tr,
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
                            imagePath:
                                ImageConstant.imgFluentBookmarkAdd20Filled,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 25.v,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 112.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 4.v,
                        ),
                        decoration:
                            AppDecoration.fillOnErrorContainer1.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder13,
                        ),
                        child: Text(
                          "lbl_administration".tr,
                          style: CustomTextStyles.bodySmallOnErrorContainer,
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
                          style: CustomTextStyles.bodySmallOnErrorContainer,
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
                          style: CustomTextStyles.bodySmallOnErrorContainer,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_98_00_year".tr,
                          style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                        ),
                        Text(
                          "lbl_texas_usa".tr,
                          style: CustomTextStyles.bodyMediumOnErrorContainer_1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
