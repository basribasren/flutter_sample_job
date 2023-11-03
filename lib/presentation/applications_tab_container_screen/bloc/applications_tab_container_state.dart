// ignore_for_file: must_be_immutable

part of 'applications_tab_container_bloc.dart';

/// Represents the state of ApplicationsTabContainer in the application.
class ApplicationsTabContainerState extends Equatable {
  ApplicationsTabContainerState({this.applicationsTabContainerModelObj});

  ApplicationsTabContainerModel? applicationsTabContainerModelObj;

  @override
  List<Object?> get props => [
        applicationsTabContainerModelObj,
      ];
  ApplicationsTabContainerState copyWith(
      {ApplicationsTabContainerModel? applicationsTabContainerModelObj}) {
    return ApplicationsTabContainerState(
      applicationsTabContainerModelObj: applicationsTabContainerModelObj ??
          this.applicationsTabContainerModelObj,
    );
  }
}
