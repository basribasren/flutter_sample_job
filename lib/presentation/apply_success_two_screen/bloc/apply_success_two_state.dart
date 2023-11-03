// ignore_for_file: must_be_immutable

part of 'apply_success_two_bloc.dart';

/// Represents the state of ApplySuccessTwo in the application.
class ApplySuccessTwoState extends Equatable {
  ApplySuccessTwoState({this.applySuccessTwoModelObj});

  ApplySuccessTwoModel? applySuccessTwoModelObj;

  @override
  List<Object?> get props => [
        applySuccessTwoModelObj,
      ];
  ApplySuccessTwoState copyWith(
      {ApplySuccessTwoModel? applySuccessTwoModelObj}) {
    return ApplySuccessTwoState(
      applySuccessTwoModelObj:
          applySuccessTwoModelObj ?? this.applySuccessTwoModelObj,
    );
  }
}
