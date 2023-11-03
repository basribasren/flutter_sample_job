// ignore_for_file: must_be_immutable

part of 'reset_password_one_bloc.dart';

/// Represents the state of ResetPasswordOne in the application.
class ResetPasswordOneState extends Equatable {
  ResetPasswordOneState({
    this.group196Controller,
    this.enusEnvitoController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.resetPasswordOneModelObj,
  });

  TextEditingController? group196Controller;

  TextEditingController? enusEnvitoController;

  ResetPasswordOneModel? resetPasswordOneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        group196Controller,
        enusEnvitoController,
        isShowPassword,
        isShowPassword1,
        resetPasswordOneModelObj,
      ];
  ResetPasswordOneState copyWith({
    TextEditingController? group196Controller,
    TextEditingController? enusEnvitoController,
    bool? isShowPassword,
    bool? isShowPassword1,
    ResetPasswordOneModel? resetPasswordOneModelObj,
  }) {
    return ResetPasswordOneState(
      group196Controller: group196Controller ?? this.group196Controller,
      enusEnvitoController: enusEnvitoController ?? this.enusEnvitoController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      resetPasswordOneModelObj:
          resetPasswordOneModelObj ?? this.resetPasswordOneModelObj,
    );
  }
}
