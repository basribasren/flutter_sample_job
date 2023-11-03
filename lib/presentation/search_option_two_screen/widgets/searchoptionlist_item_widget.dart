import '../models/searchoptionlist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchoptionlistItemWidget extends StatelessWidget {
  SearchoptionlistItemWidget(
    this.searchoptionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchoptionlistItemModel searchoptionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFluentHistory20Regular,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text(
                searchoptionlistItemModelObj.typeTen!,
                style: CustomTextStyles.bodyMediumGray500_1,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray500,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Divider(
          color: appTheme.blueGray100,
        ),
      ],
    );
  }
}
