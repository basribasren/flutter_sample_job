// ignore_for_file: must_be_immutable

part of 'search_option_three_bloc.dart';

/// Represents the state of SearchOptionThree in the application.
class SearchOptionThreeState extends Equatable {
  SearchOptionThreeState({this.searchOptionThreeModelObj});

  SearchOptionThreeModel? searchOptionThreeModelObj;

  @override
  List<Object?> get props => [
        searchOptionThreeModelObj,
      ];
  SearchOptionThreeState copyWith(
      {SearchOptionThreeModel? searchOptionThreeModelObj}) {
    return SearchOptionThreeState(
      searchOptionThreeModelObj:
          searchOptionThreeModelObj ?? this.searchOptionThreeModelObj,
    );
  }
}
