// ignore_for_file: must_be_immutable

part of 'forgot_password_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordOneTabContainer widget is first created.
class ForgotPasswordOneTabContainerInitialEvent
    extends ForgotPasswordOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
