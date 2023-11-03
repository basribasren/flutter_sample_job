// ignore_for_file: must_be_immutable

part of 'homepage_two_bloc.dart';

/// Represents the state of HomepageTwo in the application.
class HomepageTwoState extends Equatable {
  HomepageTwoState({
    this.searchController,
    this.homepageTwoModelObj,
  });

  TextEditingController? searchController;

  HomepageTwoModel? homepageTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageTwoModelObj,
      ];
  HomepageTwoState copyWith({
    TextEditingController? searchController,
    HomepageTwoModel? homepageTwoModelObj,
  }) {
    return HomepageTwoState(
      searchController: searchController ?? this.searchController,
      homepageTwoModelObj: homepageTwoModelObj ?? this.homepageTwoModelObj,
    );
  }
}
