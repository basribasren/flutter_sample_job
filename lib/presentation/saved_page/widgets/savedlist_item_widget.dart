import '../models/savedlist_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SavedlistItemWidget extends StatelessWidget {
  SavedlistItemWidget(
    this.savedlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SavedlistItemModel savedlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineSecondaryContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 44.adaptSize,
                width: 44.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: CustomImageView(
                  imagePath: savedlistItemModelObj?.uXIntern,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  alignment: Alignment.center,
                ),
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
                            savedlistItemModelObj.jrExecutive!,
                            style: theme.textTheme.titleSmall,
                          ),
                          Text(
                            savedlistItemModelObj.price!,
                            style: theme.textTheme.labelLarge,
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
                              savedlistItemModelObj.burgerKing!,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Opacity(
                            opacity: 0.5,
                            child: Text(
                              savedlistItemModelObj.losAngelsUS!,
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
          SizedBox(height: 23.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomElevatedButton(
                height: 33.v,
                width: 114.h,
                text: "lbl_closed".tr,
                buttonStyle: CustomButtonStyles.fillRedTL16,
                buttonTextStyle: CustomTextStyles.labelLargeRed70001,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 6.v,
                  bottom: 7.v,
                ),
                child: Text(
                  savedlistItemModelObj.fullTime!,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
