import '../models/userprofilelist5_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist5ItemWidget extends StatelessWidget {
  Userprofilelist5ItemWidget(
    this.userprofilelist5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist5ItemModel userprofilelist5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: userprofilelist5ItemModelObj?.userImage,
            height: 43.v,
            width: 41.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userprofilelist5ItemModelObj.userName!,
                    style: theme.textTheme.titleSmall,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      userprofilelist5ItemModelObj.userSalary!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      userprofilelist5ItemModelObj.userCompany!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      userprofilelist5ItemModelObj.userLocation!,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
