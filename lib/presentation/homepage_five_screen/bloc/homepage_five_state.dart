// ignore_for_file: must_be_immutable

part of 'homepage_five_bloc.dart';

/// Represents the state of HomepageFive in the application.
class HomepageFiveState extends Equatable {
  HomepageFiveState({
    this.searchController,
    this.homepageFiveModelObj,
  });

  TextEditingController? searchController;

  HomepageFiveModel? homepageFiveModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homepageFiveModelObj,
      ];
  HomepageFiveState copyWith({
    TextEditingController? searchController,
    HomepageFiveModel? homepageFiveModelObj,
  }) {
    return HomepageFiveState(
      searchController: searchController ?? this.searchController,
      homepageFiveModelObj: homepageFiveModelObj ?? this.homepageFiveModelObj,
    );
  }
}
