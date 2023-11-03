import '../models/userprofile4_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: userprofile4ItemModelObj?.userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            userprofile4ItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              userprofile4ItemModelObj.companyName!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            userprofile4ItemModelObj.salary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
