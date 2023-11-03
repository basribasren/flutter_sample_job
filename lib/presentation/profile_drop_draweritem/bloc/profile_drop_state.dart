// ignore_for_file: must_be_immutable

part of 'profile_drop_bloc.dart';

/// Represents the state of ProfileDrop in the application.
class ProfileDropState extends Equatable {
  ProfileDropState({this.profileDropModelObj});

  ProfileDropModel? profileDropModelObj;

  @override
  List<Object?> get props => [
        profileDropModelObj,
      ];
  ProfileDropState copyWith({ProfileDropModel? profileDropModelObj}) {
    return ProfileDropState(
      profileDropModelObj: profileDropModelObj ?? this.profileDropModelObj,
    );
  }
}
