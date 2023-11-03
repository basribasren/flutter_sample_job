import '../models/uxdesignerprofile_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UxdesignerprofileItemWidget extends StatelessWidget {
  UxdesignerprofileItemWidget(
    this.uxdesignerprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UxdesignerprofileItemModel uxdesignerprofileItemModelObj;

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: uxdesignerprofileItemModelObj?.userImage,
            height: 40.adaptSize,
            width: 40.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            uxdesignerprofileItemModelObj.userName!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 1.v),
          Opacity(
            opacity: 0.5,
            child: Text(
              uxdesignerprofileItemModelObj.dribbble!,
              style: CustomTextStyles.bodySmallOnPrimary_1,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            uxdesignerprofileItemModelObj.salary!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
