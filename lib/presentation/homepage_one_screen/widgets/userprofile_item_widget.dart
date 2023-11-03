import '../models/userprofile_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userprofileItemModelObj?.userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            userprofileItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Text(
            userprofileItemModelObj.userPlatform!,
            style: CustomTextStyles.bodySmallGray600,
          ),
          SizedBox(height: 8.v),
          Text(
            userprofileItemModelObj.userSalary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
