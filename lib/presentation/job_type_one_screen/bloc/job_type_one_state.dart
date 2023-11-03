// ignore_for_file: must_be_immutable

part of 'job_type_one_bloc.dart';

/// Represents the state of JobTypeOne in the application.
class JobTypeOneState extends Equatable {
  JobTypeOneState({this.jobTypeOneModelObj});

  JobTypeOneModel? jobTypeOneModelObj;

  @override
  List<Object?> get props => [
        jobTypeOneModelObj,
      ];
  JobTypeOneState copyWith({JobTypeOneModel? jobTypeOneModelObj}) {
    return JobTypeOneState(
      jobTypeOneModelObj: jobTypeOneModelObj ?? this.jobTypeOneModelObj,
    );
  }
}
