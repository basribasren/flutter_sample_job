// ignore_for_file: must_be_immutable

part of 'homepage_three_bloc.dart';

/// Represents the state of HomepageThree in the application.
class HomepageThreeState extends Equatable {
  HomepageThreeState({
    this.searchController,
    this.sliderIndex = 0,
    this.homepageThreeModelObj,
  });

  TextEditingController? searchController;

  HomepageThreeModel? homepageThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        homepageThreeModelObj,
      ];
  HomepageThreeState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    HomepageThreeModel? homepageThreeModelObj,
  }) {
    return HomepageThreeState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageThreeModelObj:
          homepageThreeModelObj ?? this.homepageThreeModelObj,
    );
  }
}
