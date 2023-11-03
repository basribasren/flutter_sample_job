import '../models/userprofilelist4_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist4ItemWidget extends StatelessWidget {
  Userprofilelist4ItemWidget(
    this.userprofilelist4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist4ItemModel userprofilelist4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: 156.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userprofilelist4ItemModelObj?.userImage,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          SizedBox(height: 2.v),
          Text(
            userprofilelist4ItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 2.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              userprofilelist4ItemModelObj.companyName!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            userprofilelist4ItemModelObj.salary!,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
