// ignore_for_file: must_be_immutable

part of 'forgot_password_one_tab_container_bloc.dart';

/// Represents the state of ForgotPasswordOneTabContainer in the application.
class ForgotPasswordOneTabContainerState extends Equatable {
  ForgotPasswordOneTabContainerState(
      {this.forgotPasswordOneTabContainerModelObj});

  ForgotPasswordOneTabContainerModel? forgotPasswordOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        forgotPasswordOneTabContainerModelObj,
      ];
  ForgotPasswordOneTabContainerState copyWith(
      {ForgotPasswordOneTabContainerModel?
          forgotPasswordOneTabContainerModelObj}) {
    return ForgotPasswordOneTabContainerState(
      forgotPasswordOneTabContainerModelObj:
          forgotPasswordOneTabContainerModelObj ??
              this.forgotPasswordOneTabContainerModelObj,
    );
  }
}
