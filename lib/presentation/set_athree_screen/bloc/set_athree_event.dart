// ignore_for_file: must_be_immutable

part of 'set_athree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetAthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetAthreeEvent extends Equatable {}

/// Event that is dispatched when the SetAthree widget is first created.
class SetAthreeInitialEvent extends SetAthreeEvent {
  @override
  List<Object?> get props => [];
}
