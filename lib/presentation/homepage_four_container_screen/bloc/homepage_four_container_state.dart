// ignore_for_file: must_be_immutable

part of 'homepage_four_container_bloc.dart';

/// Represents the state of HomepageFourContainer in the application.
class HomepageFourContainerState extends Equatable {
  HomepageFourContainerState({this.homepageFourContainerModelObj});

  HomepageFourContainerModel? homepageFourContainerModelObj;

  @override
  List<Object?> get props => [
        homepageFourContainerModelObj,
      ];
  HomepageFourContainerState copyWith(
      {HomepageFourContainerModel? homepageFourContainerModelObj}) {
    return HomepageFourContainerState(
      homepageFourContainerModelObj:
          homepageFourContainerModelObj ?? this.homepageFourContainerModelObj,
    );
  }
}
