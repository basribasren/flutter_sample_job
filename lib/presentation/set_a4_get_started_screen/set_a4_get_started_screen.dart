import 'bloc/set_a4_get_started_bloc.dart';
import 'models/set_a4_get_started_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SetA4GetStartedScreen extends StatelessWidget {
  const SetA4GetStartedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetA4GetStartedBloc>(
      create: (context) => SetA4GetStartedBloc(SetA4GetStartedState(
        setA4GetStartedModelObj: SetA4GetStartedModel(),
      ))
        ..add(SetA4GetStartedInitialEvent()),
      child: SetA4GetStartedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetA4GetStartedBloc, SetA4GetStartedState>(
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
                      imagePath: ImageConstant.imgEllipse796103x375,
                      height: 103.v,
                      width: 375.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    height: 324.v,
                    width: 287.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_make_your_career".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCareerProgressAmico,
                          height: 290.v,
                          width: 287.h,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Container(
                    width: 290.h,
                    margin: EdgeInsets.only(
                      left: 41.h,
                      right: 42.h,
                    ),
                    child: Text(
                      "msg_we_help_you_find".tr,
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
                  CustomElevatedButton(
                    text: "lbl_explore".tr,
                    margin: EdgeInsets.symmetric(horizontal: 40.h),
                    buttonStyle: CustomButtonStyles.fillBlueGray,
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
