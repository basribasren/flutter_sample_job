// ignore_for_file: must_be_immutable

part of 'job_details_three_bloc.dart';

/// Represents the state of JobDetailsThree in the application.
class JobDetailsThreeState extends Equatable {
  JobDetailsThreeState({this.jobDetailsThreeModelObj});

  JobDetailsThreeModel? jobDetailsThreeModelObj;

  @override
  List<Object?> get props => [
        jobDetailsThreeModelObj,
      ];
  JobDetailsThreeState copyWith(
      {JobDetailsThreeModel? jobDetailsThreeModelObj}) {
    return JobDetailsThreeState(
      jobDetailsThreeModelObj:
          jobDetailsThreeModelObj ?? this.jobDetailsThreeModelObj,
    );
  }
}
