// ignore_for_file: must_be_immutable

part of 'reset_password_confirmation_bloc.dart';

/// Represents the state of ResetPasswordConfirmation in the application.
class ResetPasswordConfirmationState extends Equatable {
  ResetPasswordConfirmationState({this.resetPasswordConfirmationModelObj});

  ResetPasswordConfirmationModel? resetPasswordConfirmationModelObj;

  @override
  List<Object?> get props => [
        resetPasswordConfirmationModelObj,
      ];
  ResetPasswordConfirmationState copyWith(
      {ResetPasswordConfirmationModel? resetPasswordConfirmationModelObj}) {
    return ResetPasswordConfirmationState(
      resetPasswordConfirmationModelObj: resetPasswordConfirmationModelObj ??
          this.resetPasswordConfirmationModelObj,
    );
  }
}
