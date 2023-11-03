// ignore_for_file: must_be_immutable

part of 'set_a4_get_started_bloc.dart';

/// Represents the state of SetA4GetStarted in the application.
class SetA4GetStartedState extends Equatable {
  SetA4GetStartedState({this.setA4GetStartedModelObj});

  SetA4GetStartedModel? setA4GetStartedModelObj;

  @override
  List<Object?> get props => [
        setA4GetStartedModelObj,
      ];
  SetA4GetStartedState copyWith(
      {SetA4GetStartedModel? setA4GetStartedModelObj}) {
    return SetA4GetStartedState(
      setA4GetStartedModelObj:
          setA4GetStartedModelObj ?? this.setA4GetStartedModelObj,
    );
  }
}
