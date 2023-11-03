import '../models/usernotification_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsernotificationItemWidget extends StatelessWidget {
  UsernotificationItemWidget(
    this.usernotificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsernotificationItemModel usernotificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: CustomImageView(
                    imagePath: usernotificationItemModelObj?.userImage,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 268.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_your_application2".tr,
                            style: CustomTextStyles.bodyMediumGray500,
                          ),
                          TextSpan(
                            text: "lbl_bmw".tr,
                            style: CustomTextStyles.titleSmallMedium,
                          ),
                          TextSpan(
                            text: "msg_you_can_check".tr,
                            style: CustomTextStyles.bodyMediumGray500,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 52.h),
            child: Text(
              usernotificationItemModelObj.notificationTime!,
              style: CustomTextStyles.labelLargeGray500,
            ),
          ),
        ],
      ),
    );
  }
}
