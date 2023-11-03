// ignore_for_file: must_be_immutable

part of 'register_one_bloc.dart';

/// Represents the state of RegisterOne in the application.
class RegisterOneState extends Equatable {
  RegisterOneState({
    this.userController,
    this.fullNameController,
    this.passwordController,
    this.confirmPasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.registerOneModelObj,
  });

  TextEditingController? userController;

  TextEditingController? fullNameController;

  TextEditingController? passwordController;

  TextEditingController? confirmPasswordController;

  RegisterOneModel? registerOneModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        userController,
        fullNameController,
        passwordController,
        confirmPasswordController,
        isShowPassword,
        isShowPassword1,
        registerOneModelObj,
      ];
  RegisterOneState copyWith({
    TextEditingController? userController,
    TextEditingController? fullNameController,
    TextEditingController? passwordController,
    TextEditingController? confirmPasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    RegisterOneModel? registerOneModelObj,
  }) {
    return RegisterOneState(
      userController: userController ?? this.userController,
      fullNameController: fullNameController ?? this.fullNameController,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      registerOneModelObj: registerOneModelObj ?? this.registerOneModelObj,
    );
  }
}
