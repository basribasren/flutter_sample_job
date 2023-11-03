// ignore_for_file: must_be_immutable

part of 'homepage_four_bloc.dart';

/// Represents the state of HomepageFour in the application.
class HomepageFourState extends Equatable {
  HomepageFourState({
    this.searchController,
    this.homepageFourModelObj,
  });

  TextEditingController? searchController;

  HomepageFourModel? homepageFourModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageFourModelObj,
      ];
  HomepageFourState copyWith({
    TextEditingController? searchController,
    HomepageFourModel? homepageFourModelObj,
  }) {
    return HomepageFourState(
      searchController: searchController ?? this.searchController,
      homepageFourModelObj: homepageFourModelObj ?? this.homepageFourModelObj,
    );
  }
}
