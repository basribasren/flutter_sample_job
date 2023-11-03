import 'bloc/forgot_password_two_bloc.dart';
import 'models/forgot_password_two_model.dart';
import 'package:basri_s_application5/core/app_export.dart';
import 'package:basri_s_application5/core/utils/validation_functions.dart';
import 'package:basri_s_application5/widgets/custom_elevated_button.dart';
import 'package:basri_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordTwoPage extends StatefulWidget {
  const ForgotPasswordTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ForgotPasswordTwoPageState createState() => ForgotPasswordTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordTwoBloc>(
      create: (context) => ForgotPasswordTwoBloc(ForgotPasswordTwoState(
        forgotPasswordTwoModelObj: ForgotPasswordTwoModel(),
      ))
        ..add(ForgotPasswordTwoInitialEvent()),
      child: ForgotPasswordTwoPage(),
    );
  }
}

class ForgotPasswordTwoPageState extends State<ForgotPasswordTwoPage>
    with AutomaticKeepAliveClientMixin<ForgotPasswordTwoPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.bg,
            child: Column(
              children: [
                SizedBox(height: 48.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      BlocSelector<ForgotPasswordTwoBloc,
                          ForgotPasswordTwoState, TextEditingController?>(
                        selector: (state) => state.emailController,
                        builder: (context, emailController) {
                          return CustomTextFormField(
                            controller: emailController,
                            hintText: "lbl_e_mail".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            prefix: Padding(
                              padding: EdgeInsets.fromLTRB(
                                  25.779999.h, 19.75.v, 30.h, 19.75.v),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: 12.5.v,
                                    width: 15.44.h,
                                    margin: EdgeInsets.fromLTRB(25.779999.h,
                                        19.75.v, 13.779999.h, 19.75.v),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: 4.38.v,
                                    width: 10.69.h,
                                  ),
                                ],
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 52.v,
                            ),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.only(
                              top: 15.v,
                              right: 30.h,
                              bottom: 15.v,
                            ),
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
      ),
    );
  }
}
