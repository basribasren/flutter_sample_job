import 'bloc/set_aone_bloc.dart';
import 'models/set_aone_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SetAoneScreen extends StatelessWidget {
  const SetAoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetAoneBloc>(
      create: (context) => SetAoneBloc(SetAoneState(
        setAoneModelObj: SetAoneModel(),
      ))
        ..add(SetAoneInitialEvent()),
      child: SetAoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetAoneBloc, SetAoneState>(
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
                      imagePath: ImageConstant.imgEllipse796,
                      height: 99.v,
                      width: 375.h,
                    ),
                  ),
                  SizedBox(height: 41.v),
                  SizedBox(
                    height: 298.v,
                    width: 284.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_search_your_job".tr,
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgJobHuntAmico1,
                          height: 284.adaptSize,
                          width: 284.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Container(
                    width: 299.h,
                    margin: EdgeInsets.only(
                      left: 42.h,
                      right: 33.h,
                    ),
                    child: Text(
                      "msg_figure_out_your".tr,
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
