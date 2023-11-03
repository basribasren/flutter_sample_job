// ignore_for_file: must_be_immutable

part of 'homepage_one_bloc.dart';

/// Represents the state of HomepageOne in the application.
class HomepageOneState extends Equatable {
  HomepageOneState({
    this.searchController,
    this.homepageOneModelObj,
  });

  TextEditingController? searchController;

  HomepageOneModel? homepageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageOneModelObj,
      ];
  HomepageOneState copyWith({
    TextEditingController? searchController,
    HomepageOneModel? homepageOneModelObj,
  }) {
    return HomepageOneState(
      searchController: searchController ?? this.searchController,
      homepageOneModelObj: homepageOneModelObj ?? this.homepageOneModelObj,
    );
  }
}
