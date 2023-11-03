// ignore_for_file: must_be_immutable

part of 'set_bone_bloc.dart';

/// Represents the state of SetBone in the application.
class SetBoneState extends Equatable {
  SetBoneState({this.setBoneModelObj});

  SetBoneModel? setBoneModelObj;

  @override
  List<Object?> get props => [
        setBoneModelObj,
      ];
  SetBoneState copyWith({SetBoneModel? setBoneModelObj}) {
    return SetBoneState(
      setBoneModelObj: setBoneModelObj ?? this.setBoneModelObj,
    );
  }
}
