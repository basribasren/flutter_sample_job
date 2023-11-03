// ignore_for_file: must_be_immutable

part of 'search_option_two_bloc.dart';

/// Represents the state of SearchOptionTwo in the application.
class SearchOptionTwoState extends Equatable {
  SearchOptionTwoState({
    this.searchController,
    this.searchOptionTwoModelObj,
  });

  TextEditingController? searchController;

  SearchOptionTwoModel? searchOptionTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchOptionTwoModelObj,
      ];
  SearchOptionTwoState copyWith({
    TextEditingController? searchController,
    SearchOptionTwoModel? searchOptionTwoModelObj,
  }) {
    return SearchOptionTwoState(
      searchController: searchController ?? this.searchController,
      searchOptionTwoModelObj:
          searchOptionTwoModelObj ?? this.searchOptionTwoModelObj,
    );
  }
}
