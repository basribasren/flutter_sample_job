// ignore_for_file: must_be_immutable

part of 'set_b4_get_started_bloc.dart';

/// Represents the state of SetB4GetStarted in the application.
class SetB4GetStartedState extends Equatable {
  SetB4GetStartedState({this.setB4GetStartedModelObj});

  SetB4GetStartedModel? setB4GetStartedModelObj;

  @override
  List<Object?> get props => [
        setB4GetStartedModelObj,
      ];
  SetB4GetStartedState copyWith(
      {SetB4GetStartedModel? setB4GetStartedModelObj}) {
    return SetB4GetStartedState(
      setB4GetStartedModelObj:
          setB4GetStartedModelObj ?? this.setB4GetStartedModelObj,
    );
  }
}
