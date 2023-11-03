import '../models/categorygrid_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategorygridItemWidget extends StatelessWidget {
  CategorygridItemWidget(
    this.categorygridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategorygridItemModel categorygridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: categorygridItemModelObj?.userImage,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
          ),
          SizedBox(height: 17.v),
          Text(
            categorygridItemModelObj.userDesignation!,
            style: CustomTextStyles.labelLarge13,
          ),
        ],
      ),
    );
  }
}
