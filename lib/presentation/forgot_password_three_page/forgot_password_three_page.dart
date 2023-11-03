import 'bloc/forgot_password_three_bloc.dart';
import 'models/forgot_password_three_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:basri_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordThreePage extends StatefulWidget {
  const ForgotPasswordThreePage({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordThreePageState createState() => ForgotPasswordThreePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordThreeBloc>(
      create: (context) => ForgotPasswordThreeBloc(ForgotPasswordThreeState(
        forgotPasswordThreeModelObj: ForgotPasswordThreeModel(),
      ))
        ..add(ForgotPasswordThreeInitialEvent()),
      child: ForgotPasswordThreePage(),
    );
  }
}

class ForgotPasswordThreePageState extends State<ForgotPasswordThreePage>
    with AutomaticKeepAliveClientMixin<ForgotPasswordThreePage> {
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
              SizedBox(height: 48.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    BlocSelector<ForgotPasswordThreeBloc,
                        ForgotPasswordThreeState, TextEditingController?>(
                      selector: (state) => state.phoneNumberController,
                      builder: (context, phoneNumberController) {
                        return CustomTextFormField(
                          controller: phoneNumberController,
                          hintText: "lbl_1_484_2989_335".tr,
                          textInputAction: TextInputAction.done,
                          prefix: Padding(
                            padding: EdgeInsets.fromLTRB(
                                20.h, 15.269989.v, 30.h, 16.72998.v),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.fromLTRB(
                                      20.h, 15.269989.v, 30.h, 16.72998.v),
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
                          borderDecoration: TextFormFieldStyleHelper
                              .outlineOnPrimaryContainerTL10,
                        );
                      },
                    ),
                    SizedBox(height: 160.v),
                    CustomElevatedButton(
                      text: "lbl_send_code".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
