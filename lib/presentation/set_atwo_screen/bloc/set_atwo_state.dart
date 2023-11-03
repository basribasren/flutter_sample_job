// ignore_for_file: must_be_immutable

part of 'set_atwo_bloc.dart';

/// Represents the state of SetAtwo in the application.
class SetAtwoState extends Equatable {
  SetAtwoState({this.setAtwoModelObj});

  SetAtwoModel? setAtwoModelObj;

  @override
  List<Object?> get props => [
        setAtwoModelObj,
      ];
  SetAtwoState copyWith({SetAtwoModel? setAtwoModelObj}) {
    return SetAtwoState(
      setAtwoModelObj: setAtwoModelObj ?? this.setAtwoModelObj,
    );
  }
}
