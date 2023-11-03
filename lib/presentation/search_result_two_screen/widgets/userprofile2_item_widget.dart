import '../models/userprofile2_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userprofile2ItemModelObj?.userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            userprofile2ItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              userprofile2ItemModelObj.userOS!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            userprofile2ItemModelObj.userSalary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
