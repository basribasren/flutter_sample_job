// ignore_for_file: must_be_immutable

part of 'log_in_one_bloc.dart';

/// Represents the state of LogInOne in the application.
class LogInOneState extends Equatable {
  LogInOneState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.logInOneModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LogInOneModel? logInOneModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        logInOneModelObj,
      ];
  LogInOneState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LogInOneModel? logInOneModelObj,
  }) {
    return LogInOneState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInOneModelObj: logInOneModelObj ?? this.logInOneModelObj,
    );
  }
}
