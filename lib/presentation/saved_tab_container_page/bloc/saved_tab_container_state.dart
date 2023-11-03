// ignore_for_file: must_be_immutable

part of 'saved_tab_container_bloc.dart';

/// Represents the state of SavedTabContainer in the application.
class SavedTabContainerState extends Equatable {
  SavedTabContainerState({this.savedTabContainerModelObj});

  SavedTabContainerModel? savedTabContainerModelObj;

  @override
  List<Object?> get props => [
        savedTabContainerModelObj,
      ];
  SavedTabContainerState copyWith(
      {SavedTabContainerModel? savedTabContainerModelObj}) {
    return SavedTabContainerState(
      savedTabContainerModelObj:
          savedTabContainerModelObj ?? this.savedTabContainerModelObj,
    );
  }
}
