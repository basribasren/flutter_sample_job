import 'bloc/set_atwo_bloc.dart';
import 'models/set_atwo_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SetAtwoScreen extends StatelessWidget {
  const SetAtwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetAtwoBloc>(
      create: (context) => SetAtwoBloc(SetAtwoState(
        setAtwoModelObj: SetAtwoModel(),
      ))
        ..add(SetAtwoInitialEvent()),
      child: SetAtwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetAtwoBloc, SetAtwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 440.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_browse_jobs_list".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgBrowserStatsAmico,
                          height: 338.adaptSize,
                          width: 338.adaptSize,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 13.v),
                        ),
                        Opacity(
                          opacity: 0.2,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEllipse79698x375,
                            height: 98.v,
                            width: 375.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Container(
                    width: 295.h,
                    margin: EdgeInsets.symmetric(horizontal: 39.h),
                    child: Text(
                      "msg_our_job_list_include".tr,
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
                    padding: EdgeInsets.symmetric(horizontal: 39.h),
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
}
