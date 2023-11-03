import '../models/userprofilelist6_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist6ItemWidget extends StatelessWidget {
  Userprofilelist6ItemWidget(
    this.userprofilelist6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist6ItemModel userprofilelist6ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGoogle,
            height: 43.adaptSize,
            width: 43.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      userprofilelist6ItemModelObj.userName!,
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(
                      userprofilelist6ItemModelObj.userSalary!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        userprofilelist6ItemModelObj.userCompany!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        userprofilelist6ItemModelObj.userLocation!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
