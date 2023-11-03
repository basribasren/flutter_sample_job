// ignore_for_file: must_be_immutable

part of 'job_preferences_two_bloc.dart';

/// Represents the state of JobPreferencesTwo in the application.
class JobPreferencesTwoState extends Equatable {
  JobPreferencesTwoState({this.jobPreferencesTwoModelObj});

  JobPreferencesTwoModel? jobPreferencesTwoModelObj;

  @override
  List<Object?> get props => [
        jobPreferencesTwoModelObj,
      ];
  JobPreferencesTwoState copyWith(
      {JobPreferencesTwoModel? jobPreferencesTwoModelObj}) {
    return JobPreferencesTwoState(
      jobPreferencesTwoModelObj:
          jobPreferencesTwoModelObj ?? this.jobPreferencesTwoModelObj,
    );
  }
}
