// ignore_for_file: must_be_immutable

part of 'verify_bloc.dart';

/// Represents the state of Verify in the application.
class VerifyState extends Equatable {
  VerifyState({
    this.otpController,
    this.verifyModelObj,
  });

  TextEditingController? otpController;

  VerifyModel? verifyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyModelObj,
      ];
  VerifyState copyWith({
    TextEditingController? otpController,
    VerifyModel? verifyModelObj,
  }) {
    return VerifyState(
      otpController: otpController ?? this.otpController,
      verifyModelObj: verifyModelObj ?? this.verifyModelObj,
    );
  }
}
