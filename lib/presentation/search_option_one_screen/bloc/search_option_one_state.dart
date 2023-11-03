// ignore_for_file: must_be_immutable

part of 'search_option_one_bloc.dart';

/// Represents the state of SearchOptionOne in the application.
class SearchOptionOneState extends Equatable {
  SearchOptionOneState({this.searchOptionOneModelObj});

  SearchOptionOneModel? searchOptionOneModelObj;

  @override
  List<Object?> get props => [
        searchOptionOneModelObj,
      ];
  SearchOptionOneState copyWith(
      {SearchOptionOneModel? searchOptionOneModelObj}) {
    return SearchOptionOneState(
      searchOptionOneModelObj:
          searchOptionOneModelObj ?? this.searchOptionOneModelObj,
    );
  }
}
