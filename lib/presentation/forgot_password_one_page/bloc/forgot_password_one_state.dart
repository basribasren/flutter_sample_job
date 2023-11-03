// ignore_for_file: must_be_immutable

part of 'forgot_password_one_bloc.dart';

/// Represents the state of ForgotPasswordOne in the application.
class ForgotPasswordOneState extends Equatable {
  ForgotPasswordOneState({
    this.plusOneController,
    this.forgotPasswordOneModelObj,
  });

  TextEditingController? plusOneController;

  ForgotPasswordOneModel? forgotPasswordOneModelObj;

  @override
  List<Object?> get props => [
        plusOneController,
        forgotPasswordOneModelObj,
      ];
  ForgotPasswordOneState copyWith({
    TextEditingController? plusOneController,
    ForgotPasswordOneModel? forgotPasswordOneModelObj,
  }) {
    return ForgotPasswordOneState(
      plusOneController: plusOneController ?? this.plusOneController,
      forgotPasswordOneModelObj:
          forgotPasswordOneModelObj ?? this.forgotPasswordOneModelObj,
    );
  }
}
