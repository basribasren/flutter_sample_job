import '../models/userprofilelist3_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  Userprofilelist3ItemWidget(
    this.userprofilelist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist3ItemModel userprofilelist3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
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
            imagePath: userprofilelist3ItemModelObj?.userImage,
            height: 39.v,
            width: 40.h,
          ),
          SizedBox(height: 12.v),
          Text(
            userprofilelist3ItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              userprofilelist3ItemModelObj.userCompany!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            userprofilelist3ItemModelObj.userSalary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
