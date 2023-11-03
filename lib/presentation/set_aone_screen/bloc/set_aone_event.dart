// ignore_for_file: must_be_immutable

part of 'set_aone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetAone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetAoneEvent extends Equatable {}

/// Event that is dispatched when the SetAone widget is first created.
class SetAoneInitialEvent extends SetAoneEvent {
  @override
  List<Object?> get props => [];
}
