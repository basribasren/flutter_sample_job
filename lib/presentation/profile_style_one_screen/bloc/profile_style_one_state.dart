// ignore_for_file: must_be_immutable

part of 'profile_style_one_bloc.dart';

/// Represents the state of ProfileStyleOne in the application.
class ProfileStyleOneState extends Equatable {
  ProfileStyleOneState({this.profileStyleOneModelObj});

  ProfileStyleOneModel? profileStyleOneModelObj;

  @override
  List<Object?> get props => [
        profileStyleOneModelObj,
      ];
  ProfileStyleOneState copyWith(
      {ProfileStyleOneModel? profileStyleOneModelObj}) {
    return ProfileStyleOneState(
      profileStyleOneModelObj:
          profileStyleOneModelObj ?? this.profileStyleOneModelObj,
    );
  }
}
