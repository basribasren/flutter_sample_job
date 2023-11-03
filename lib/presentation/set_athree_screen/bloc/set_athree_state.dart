// ignore_for_file: must_be_immutable

part of 'set_athree_bloc.dart';

/// Represents the state of SetAthree in the application.
class SetAthreeState extends Equatable {
  SetAthreeState({this.setAthreeModelObj});

  SetAthreeModel? setAthreeModelObj;

  @override
  List<Object?> get props => [
        setAthreeModelObj,
      ];
  SetAthreeState copyWith({SetAthreeModel? setAthreeModelObj}) {
    return SetAthreeState(
      setAthreeModelObj: setAthreeModelObj ?? this.setAthreeModelObj,
    );
  }
}
