import '../models/userprofile1_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
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
            imagePath: userprofile1ItemModelObj?.userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 12.v),
          Text(
            userprofile1ItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              userprofile1ItemModelObj.companyName!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            userprofile1ItemModelObj.salary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
