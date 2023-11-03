import 'bloc/apply_success_one_bloc.dart';
import 'models/apply_success_one_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:basri_s_application5/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class ApplySuccessOneScreen extends StatelessWidget {
  const ApplySuccessOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ApplySuccessOneBloc>(
      create: (context) => ApplySuccessOneBloc(ApplySuccessOneState(
        applySuccessOneModelObj: ApplySuccessOneModel(),
      ))
        ..add(ApplySuccessOneInitialEvent()),
      child: ApplySuccessOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ApplySuccessOneBloc, ApplySuccessOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDoneRafiki1,
                    height: 254.adaptSize,
                    width: 254.adaptSize,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 92.h),
                      child: Text(
                        "lbl_successful".tr,
                        style: CustomTextStyles.headlineSmallBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 235.h,
                      margin: EdgeInsets.only(
                        left: 39.h,
                        right: 51.h,
                      ),
                      child: Text(
                        "msg_you_ve_successfully".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeGray500_1.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 62.v),
                  CustomElevatedButton(
                    text: "lbl_track".tr,
                  ),
                  SizedBox(height: 20.v),
                  CustomOutlinedButton(
                    text: "lbl_browse_jobs".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
