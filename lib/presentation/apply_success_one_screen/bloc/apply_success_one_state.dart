// ignore_for_file: must_be_immutable

part of 'apply_success_one_bloc.dart';

/// Represents the state of ApplySuccessOne in the application.
class ApplySuccessOneState extends Equatable {
  ApplySuccessOneState({this.applySuccessOneModelObj});

  ApplySuccessOneModel? applySuccessOneModelObj;

  @override
  List<Object?> get props => [
        applySuccessOneModelObj,
      ];
  ApplySuccessOneState copyWith(
      {ApplySuccessOneModel? applySuccessOneModelObj}) {
    return ApplySuccessOneState(
      applySuccessOneModelObj:
          applySuccessOneModelObj ?? this.applySuccessOneModelObj,
    );
  }
}
