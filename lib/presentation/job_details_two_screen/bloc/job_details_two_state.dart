// ignore_for_file: must_be_immutable

part of 'job_details_two_bloc.dart';

/// Represents the state of JobDetailsTwo in the application.
class JobDetailsTwoState extends Equatable {
  JobDetailsTwoState({this.jobDetailsTwoModelObj});

  JobDetailsTwoModel? jobDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        jobDetailsTwoModelObj,
      ];
  JobDetailsTwoState copyWith({JobDetailsTwoModel? jobDetailsTwoModelObj}) {
    return JobDetailsTwoState(
      jobDetailsTwoModelObj:
          jobDetailsTwoModelObj ?? this.jobDetailsTwoModelObj,
    );
  }
}
