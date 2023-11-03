// ignore_for_file: must_be_immutable

part of 'verify_one_bloc.dart';

/// Represents the state of VerifyOne in the application.
class VerifyOneState extends Equatable {
  VerifyOneState({
    this.otpController,
    this.verifyOneModelObj,
  });

  TextEditingController? otpController;

  VerifyOneModel? verifyOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyOneModelObj,
      ];
  VerifyOneState copyWith({
    TextEditingController? otpController,
    VerifyOneModel? verifyOneModelObj,
  }) {
    return VerifyOneState(
      otpController: otpController ?? this.otpController,
      verifyOneModelObj: verifyOneModelObj ?? this.verifyOneModelObj,
    );
  }
}
