// ignore_for_file: must_be_immutable

part of 'profile_style_two_bloc.dart';

/// Represents the state of ProfileStyleTwo in the application.
class ProfileStyleTwoState extends Equatable {
  ProfileStyleTwoState({this.profileStyleTwoModelObj});

  ProfileStyleTwoModel? profileStyleTwoModelObj;

  @override
  List<Object?> get props => [
        profileStyleTwoModelObj,
      ];
  ProfileStyleTwoState copyWith(
      {ProfileStyleTwoModel? profileStyleTwoModelObj}) {
    return ProfileStyleTwoState(
      profileStyleTwoModelObj:
          profileStyleTwoModelObj ?? this.profileStyleTwoModelObj,
    );
  }
}
