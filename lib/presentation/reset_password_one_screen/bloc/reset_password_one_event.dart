// ignore_for_file: must_be_immutable

part of 'reset_password_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordOneEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordOne widget is first created.
class ResetPasswordOneInitialEvent extends ResetPasswordOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends ResetPasswordOneEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends ResetPasswordOneEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
