// ignore_for_file: must_be_immutable

part of 'application_tracking_bloc.dart';

/// Represents the state of ApplicationTracking in the application.
class ApplicationTrackingState extends Equatable {
  ApplicationTrackingState({this.applicationTrackingModelObj});

  ApplicationTrackingModel? applicationTrackingModelObj;

  @override
  List<Object?> get props => [
        applicationTrackingModelObj,
      ];
  ApplicationTrackingState copyWith(
      {ApplicationTrackingModel? applicationTrackingModelObj}) {
    return ApplicationTrackingState(
      applicationTrackingModelObj:
          applicationTrackingModelObj ?? this.applicationTrackingModelObj,
    );
  }
}
