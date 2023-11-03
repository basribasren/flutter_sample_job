// ignore_for_file: must_be_immutable

part of 'job_type_bloc.dart';

/// Represents the state of JobType in the application.
class JobTypeState extends Equatable {
  JobTypeState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.jobTypeModelObj,
  });

  JobTypeModel? jobTypeModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        jobTypeModelObj,
      ];
  JobTypeState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    JobTypeModel? jobTypeModelObj,
  }) {
    return JobTypeState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      jobTypeModelObj: jobTypeModelObj ?? this.jobTypeModelObj,
    );
  }
}
