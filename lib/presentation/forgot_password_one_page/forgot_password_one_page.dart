import 'bloc/forgot_password_one_bloc.dart';
import 'models/forgot_password_one_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:basri_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordOnePage extends StatefulWidget {
  const ForgotPasswordOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordOnePageState createState() => ForgotPasswordOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordOneBloc>(
      create: (context) => ForgotPasswordOneBloc(ForgotPasswordOneState(
        forgotPasswordOneModelObj: ForgotPasswordOneModel(),
      ))
        ..add(ForgotPasswordOneInitialEvent()),
      child: ForgotPasswordOnePage(),
    );
  }
}

class ForgotPasswordOnePageState extends State<ForgotPasswordOnePage>
    with AutomaticKeepAliveClientMixin<ForgotPasswordOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.bg,
          child: Column(
            children: [
              SizedBox(height: 40.v),
              _buildPlusOneSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlusOneSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          BlocSelector<ForgotPasswordOneBloc, ForgotPasswordOneState,
              TextEditingController?>(
            selector: (state) => state.plusOneController,
            builder: (context, plusOneController) {
              return CustomTextFormField(
                controller: plusOneController,
                hintText: "lbl_1_484_2".tr,
                textInputAction: TextInputAction.done,
                prefix: Padding(
                  padding:
                      EdgeInsets.fromLTRB(20.h, 15.269989.v, 30.h, 16.730011.v),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.fromLTRB(
                            20.h, 15.269989.v, 30.h, 16.730011.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 4.v,
                        width: 8.h,
                      ),
                    ],
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 52.v,
                ),
                contentPadding: EdgeInsets.only(
                  top: 14.v,
                  right: 30.h,
                  bottom: 14.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
              );
            },
          ),
          SizedBox(height: 32.v),
          CustomElevatedButton(
            text: "lbl_send_code".tr,
          ),
        ],
      ),
    );
  }
}
