// ignore_for_file: must_be_immutable

part of 'search_result_two_bloc.dart';

/// Represents the state of SearchResultTwo in the application.
class SearchResultTwoState extends Equatable {
  SearchResultTwoState({this.searchResultTwoModelObj});

  SearchResultTwoModel? searchResultTwoModelObj;

  @override
  List<Object?> get props => [
        searchResultTwoModelObj,
      ];
  SearchResultTwoState copyWith(
      {SearchResultTwoModel? searchResultTwoModelObj}) {
    return SearchResultTwoState(
      searchResultTwoModelObj:
          searchResultTwoModelObj ?? this.searchResultTwoModelObj,
    );
  }
}
