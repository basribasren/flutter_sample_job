import '../models/companyprofile_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CompanyprofileItemWidget extends StatelessWidget {
  CompanyprofileItemWidget(
    this.companyprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CompanyprofileItemModel companyprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: companyprofileItemModelObj?.userImage,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
          SizedBox(height: 13.v),
          Text(
            companyprofileItemModelObj.companyName!,
            style: CustomTextStyles.labelLarge13,
          ),
        ],
      ),
    );
  }
}
