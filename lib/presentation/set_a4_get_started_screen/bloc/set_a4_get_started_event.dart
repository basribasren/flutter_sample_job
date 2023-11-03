// ignore_for_file: must_be_immutable

part of 'set_a4_get_started_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetA4GetStarted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetA4GetStartedEvent extends Equatable {}

/// Event that is dispatched when the SetA4GetStarted widget is first created.
class SetA4GetStartedInitialEvent extends SetA4GetStartedEvent {
  @override
  List<Object?> get props => [];
}
