// ignore_for_file: must_be_immutable

part of 'forgot_password_three_bloc.dart';

/// Represents the state of ForgotPasswordThree in the application.
class ForgotPasswordThreeState extends Equatable {
  ForgotPasswordThreeState({
    this.phoneNumberController,
    this.forgotPasswordThreeModelObj,
  });

  TextEditingController? phoneNumberController;

  ForgotPasswordThreeModel? forgotPasswordThreeModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        forgotPasswordThreeModelObj,
      ];
  ForgotPasswordThreeState copyWith({
    TextEditingController? phoneNumberController,
    ForgotPasswordThreeModel? forgotPasswordThreeModelObj,
  }) {
    return ForgotPasswordThreeState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      forgotPasswordThreeModelObj:
          forgotPasswordThreeModelObj ?? this.forgotPasswordThreeModelObj,
    );
  }
}
