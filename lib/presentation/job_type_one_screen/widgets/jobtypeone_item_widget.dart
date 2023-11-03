import '../models/jobtypeone_item_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobtypeoneItemWidget extends StatelessWidget {
  JobtypeoneItemWidget(
    this.jobtypeoneItemModelObj, {
    Key? key,
    this.onTapRadio,
  }) : super(
          key: key,
        );

  JobtypeoneItemModel jobtypeoneItemModelObj;

  Function(String)? onTapRadio;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineGray90005.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder13,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: CustomImageView(
              imagePath: jobtypeoneItemModelObj?.curveOne,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 2.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: CustomRadioButton(
                width: 230.h,
                text: "lbl_full_time".tr,
                value: "lbl_full_time".tr ?? "",
                groupValue: jobtypeoneItemModelObj.radioGroup!,
                isRightCheck: true,
                onChange: (value) {
                  onTapRadio?.call(value);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
