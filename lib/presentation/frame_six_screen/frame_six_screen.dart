import 'bloc/frame_six_bloc.dart';
import 'models/frame_six_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

class FrameSixScreen extends StatelessWidget {
  const FrameSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FrameSixBloc>(
      create: (context) => FrameSixBloc(FrameSixState(
        frameSixModelObj: FrameSixModel(),
      ))
        ..add(FrameSixInitialEvent()),
      child: FrameSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FrameSixBloc, FrameSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
            body: SizedBox(
              width: 600.h,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 600.adaptSize,
                  width: 600.adaptSize,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle140,
                        height: 622.v,
                        width: 600.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 600.adaptSize,
                          width: 600.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle31,
                                height: 441.v,
                                width: 219.h,
                                radius: BorderRadius.circular(
                                  40.h,
                                ),
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 178.h),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 759.v,
                                  width: 600.h,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle13,
                                        height: 277.v,
                                        width: 142.h,
                                        radius: BorderRadius.circular(
                                          40.h,
                                        ),
                                        alignment: Alignment.topLeft,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle30,
                                        height: 349.v,
                                        width: 219.h,
                                        radius: BorderRadius.circular(
                                          40.h,
                                        ),
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(left: 178.h),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle34,
                                        height: 218.v,
                                        width: 166.h,
                                        radius: BorderRadius.circular(
                                          40.h,
                                        ),
                                        alignment: Alignment.topRight,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle15,
                                        height: 440.v,
                                        width: 142.h,
                                        radius: BorderRadius.circular(
                                          40.h,
                                        ),
                                        alignment: Alignment.bottomLeft,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgRectangle35,
                                        height: 440.v,
                                        width: 166.h,
                                        radius: BorderRadius.circular(
                                          40.h,
                                        ),
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(bottom: 59.v),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            left: 78.h,
                                            top: 226.v,
                                            right: 78.h,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 33.h,
                                            vertical: 11.v,
                                          ),
                                          decoration: AppDecoration
                                              .outlineSecondaryContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 320.h,
                                                margin: EdgeInsets.only(
                                                  left: 40.h,
                                                  right: 17.h,
                                                ),
                                                child: Text(
                                                  "msg_download_more_free".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.displayMedium,
                                                ),
                                              ),
                                              SizedBox(height: 18.v),
                                              Text(
                                                "msg_zeeuiux_gumroad_com".tr,
                                                style: theme
                                                    .textTheme.headlineLarge!
                                                    .copyWith(
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
