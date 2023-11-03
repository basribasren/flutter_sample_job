import '../models/jobproposal_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobproposalItemWidget extends StatelessWidget {
  JobproposalItemWidget(
    this.jobproposalItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JobproposalItemModel jobproposalItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: jobproposalItemModelObj?.jrExecutive,
                height: 44.adaptSize,
                width: 44.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            jobproposalItemModelObj.userImage!,
                            style: theme.textTheme.titleSmall,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              jobproposalItemModelObj.salary!,
                              style: theme.textTheme.labelLarge,
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
                              jobproposalItemModelObj.companyName!,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              jobproposalItemModelObj.location!,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  jobproposalItemModelObj.negotiable!,
                  style: CustomTextStyles.labelLargeGray500_1,
                ),
              ),
              Text(
                jobproposalItemModelObj.joiningDate!,
                style: CustomTextStyles.labelLargeGray500_1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
