// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.profileOneController,
    this.emailController,
    this.group158Controller,
    this.passwordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.registerModelObj,
  });

  TextEditingController? profileOneController;

  TextEditingController? emailController;

  TextEditingController? group158Controller;

  TextEditingController? passwordController;

  RegisterModel? registerModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        profileOneController,
        emailController,
        group158Controller,
        passwordController,
        isShowPassword,
        isShowPassword1,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? profileOneController,
    TextEditingController? emailController,
    TextEditingController? group158Controller,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      profileOneController: profileOneController ?? this.profileOneController,
      emailController: emailController ?? this.emailController,
      group158Controller: group158Controller ?? this.group158Controller,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
