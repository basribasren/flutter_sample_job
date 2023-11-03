import 'bloc/set_athree_bloc.dart';
import 'models/set_athree_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SetAthreeScreen extends StatelessWidget {
  const SetAthreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetAthreeBloc>(
      create: (context) => SetAthreeBloc(SetAthreeState(
        setAthreeModelObj: SetAthreeModel(),
      ))
        ..add(SetAthreeInitialEvent()),
      child: SetAthreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetAthreeBloc, SetAthreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse7961,
                      height: 98.v,
                      width: 375.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildHeadlineStack(context),
                  SizedBox(height: 14.v),
                  Container(
                    width: 303.h,
                    margin: EdgeInsets.symmetric(horizontal: 35.h),
                    child: Text(
                      "msg_you_can_apply_to".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGray50015.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 53.v),
                  SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 4,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor: appTheme.blueGray70001,
                        dotColor: appTheme.gray300,
                        dotHeight: 8.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 72.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 17.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "lbl_skip".tr,
                            style: CustomTextStyles.bodyLargeGray500_1,
                          ),
                        ),
                        CustomElevatedButton(
                          width: 158.h,
                          text: "lbl_next".tr,
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                        ),
                      ],
                    ),
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

  /// Section Widget
  Widget _buildHeadlineStack(BuildContext context) {
    return SizedBox(
      height: 332.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "msg_apply_to_best_jobs".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgResumeAmico1,
            height: 312.adaptSize,
            width: 312.adaptSize,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
