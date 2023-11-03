// ignore_for_file: must_be_immutable

part of 'seacrh_filter_bloc.dart';

/// Represents the state of SeacrhFilter in the application.
class SeacrhFilterState extends Equatable {
  SeacrhFilterState({this.seacrhFilterModelObj});

  SeacrhFilterModel? seacrhFilterModelObj;

  @override
  List<Object?> get props => [
        seacrhFilterModelObj,
      ];
  SeacrhFilterState copyWith({SeacrhFilterModel? seacrhFilterModelObj}) {
    return SeacrhFilterState(
      seacrhFilterModelObj: seacrhFilterModelObj ?? this.seacrhFilterModelObj,
    );
  }
}
