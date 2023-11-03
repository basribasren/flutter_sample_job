import 'bloc/set_b4_get_started_bloc.dart';
import 'models/set_b4_get_started_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SetB4GetStartedScreen extends StatelessWidget {
  const SetB4GetStartedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetB4GetStartedBloc>(
      create: (context) => SetB4GetStartedBloc(SetB4GetStartedState(
        setB4GetStartedModelObj: SetB4GetStartedModel(),
      ))
        ..add(SetB4GetStartedInitialEvent()),
      child: SetB4GetStartedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SetB4GetStartedBloc, SetB4GetStartedState>(
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
                      imagePath: ImageConstant.imgEllipse796101x375,
                      height: 101.v,
                      width: 375.h,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGoodTeamPana1,
                    height: 256.v,
                    width: 296.h,
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    width: 262.h,
                    margin: EdgeInsets.only(
                      left: 54.h,
                      right: 58.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_make_your_dream2".tr,
                            style: theme.textTheme.displaySmall,
                          ),
                          TextSpan(
                            text: "lbl_b".tr,
                            style: CustomTextStyles.displaySmall_1,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Opacity(
                    opacity: 0.4,
                    child: SizedBox(
                      width: 259.h,
                      child: Text(
                        "msg_we_help_you_find2".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeCircularStdOnPrimary
                            .copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildExploreButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExploreButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_explore".tr,
      margin: EdgeInsets.only(
        left: 40.h,
        right: 40.h,
        bottom: 56.v,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
    );
  }
}
