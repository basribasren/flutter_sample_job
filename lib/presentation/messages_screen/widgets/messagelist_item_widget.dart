import '../models/messagelist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessagelistItemWidget extends StatelessWidget {
  MessagelistItemWidget(
    this.messagelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessagelistItemModel messagelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.bg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGoogle,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Container(
            height: 41.v,
            width: 225.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "lbl_google".tr,
                    style: CustomTextStyles.titleSmallMedium15_1,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_are_you_available".tr,
                    style: CustomTextStyles.bodyMediumOnPrimary14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_11_45_am".tr,
                  style: theme.textTheme.labelMedium,
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 23.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillBlueA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Text(
                      "lbl_4".tr,
                      style: CustomTextStyles.labelMediumGray50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
