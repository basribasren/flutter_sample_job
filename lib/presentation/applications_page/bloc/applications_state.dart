// ignore_for_file: must_be_immutable

part of 'applications_bloc.dart';

/// Represents the state of Applications in the application.
class ApplicationsState extends Equatable {
  ApplicationsState({this.applicationsModelObj});

  ApplicationsModel? applicationsModelObj;

  @override
  List<Object?> get props => [
        applicationsModelObj,
      ];
  ApplicationsState copyWith({ApplicationsModel? applicationsModelObj}) {
    return ApplicationsState(
      applicationsModelObj: applicationsModelObj ?? this.applicationsModelObj,
    );
  }
}
