// ignore_for_file: must_be_immutable

part of 'homepage_six_bloc.dart';

/// Represents the state of HomepageSix in the application.
class HomepageSixState extends Equatable {
  HomepageSixState({
    this.searchController,
    this.sliderIndex = 0,
    this.homepageSixModelObj,
  });

  TextEditingController? searchController;

  HomepageSixModel? homepageSixModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        homepageSixModelObj,
      ];
  HomepageSixState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    HomepageSixModel? homepageSixModelObj,
  }) {
    return HomepageSixState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homepageSixModelObj: homepageSixModelObj ?? this.homepageSixModelObj,
    );
  }
}
