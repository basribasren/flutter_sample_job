import 'bloc/set_bone_bloc.dart';
import 'models/set_bone_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SetBoneScreen extends StatelessWidget {
  const SetBoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetBoneBloc>(
      create: (context) => SetBoneBloc(SetBoneState(
        setBoneModelObj: SetBoneModel(),
      ))
        ..add(SetBoneInitialEvent()),
      child: SetBoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetBoneBloc, SetBoneState>(
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
                      imagePath: ImageConstant.imgEllipse796102x375,
                      height: 102.v,
                      width: 375.h,
                    ),
                  ),
                  SizedBox(height: 39.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgCareerProgressPana,
                    height: 246.adaptSize,
                    width: 246.adaptSize,
                  ),
                  SizedBox(height: 6.v),
                  Container(
                    width: 283.h,
                    margin: EdgeInsets.only(
                      left: 48.h,
                      right: 43.h,
                    ),
                    child: Text(
                      "msg_search_your_dream".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.displaySmall!.copyWith(
                        height: 1.20,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.4,
                      child: Container(
                        width: 263.h,
                        margin: EdgeInsets.only(
                          left: 49.h,
                          right: 62.h,
                        ),
                        child: Text(
                          "msg_figure_out_your2".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargeCircularStdOnPrimary
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 63.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 49.h,
                      right: 31.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 17.v,
                              bottom: 14.v,
                            ),
                            child: Text(
                              "lbl_skip".tr,
                              style: CustomTextStyles.bodyLargeOnPrimary,
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          width: 156.h,
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
