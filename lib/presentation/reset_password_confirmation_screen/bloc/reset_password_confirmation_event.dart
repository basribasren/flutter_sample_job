// ignore_for_file: must_be_immutable

part of 'reset_password_confirmation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPasswordConfirmation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPasswordConfirmationEvent extends Equatable {}

/// Event that is dispatched when the ResetPasswordConfirmation widget is first created.
class ResetPasswordConfirmationInitialEvent
    extends ResetPasswordConfirmationEvent {
  @override
  List<Object?> get props => [];
}
