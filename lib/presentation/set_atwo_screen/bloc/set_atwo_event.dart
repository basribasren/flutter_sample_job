// ignore_for_file: must_be_immutable

part of 'set_atwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetAtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetAtwoEvent extends Equatable {}

/// Event that is dispatched when the SetAtwo widget is first created.
class SetAtwoInitialEvent extends SetAtwoEvent {
  @override
  List<Object?> get props => [];
}
