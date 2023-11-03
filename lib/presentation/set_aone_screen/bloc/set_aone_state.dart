// ignore_for_file: must_be_immutable

part of 'set_aone_bloc.dart';

/// Represents the state of SetAone in the application.
class SetAoneState extends Equatable {
  SetAoneState({this.setAoneModelObj});

  SetAoneModel? setAoneModelObj;

  @override
  List<Object?> get props => [
        setAoneModelObj,
      ];
  SetAoneState copyWith({SetAoneModel? setAoneModelObj}) {
    return SetAoneState(
      setAoneModelObj: setAoneModelObj ?? this.setAoneModelObj,
    );
  }
}
