// ignore_for_file: must_be_immutable

part of 'set_b4_get_started_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetB4GetStarted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetB4GetStartedEvent extends Equatable {}

/// Event that is dispatched when the SetB4GetStarted widget is first created.
class SetB4GetStartedInitialEvent extends SetB4GetStartedEvent {
  @override
  List<Object?> get props => [];
}
