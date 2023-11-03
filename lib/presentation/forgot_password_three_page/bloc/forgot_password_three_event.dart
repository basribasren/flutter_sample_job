// ignore_for_file: must_be_immutable

part of 'forgot_password_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordThreeEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordThree widget is first created.
class ForgotPasswordThreeInitialEvent extends ForgotPasswordThreeEvent {
  @override
  List<Object?> get props => [];
}
