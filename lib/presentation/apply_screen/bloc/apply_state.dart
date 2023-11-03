// ignore_for_file: must_be_immutable

part of 'apply_bloc.dart';

/// Represents the state of Apply in the application.
class ApplyState extends Equatable {
  ApplyState({
    this.coverLetterController,
    this.applyModelObj,
  });

  TextEditingController? coverLetterController;

  ApplyModel? applyModelObj;

  @override
  List<Object?> get props => [
        coverLetterController,
        applyModelObj,
      ];
  ApplyState copyWith({
    TextEditingController? coverLetterController,
    ApplyModel? applyModelObj,
  }) {
    return ApplyState(
      coverLetterController:
          coverLetterController ?? this.coverLetterController,
      applyModelObj: applyModelObj ?? this.applyModelObj,
    );
  }
}
