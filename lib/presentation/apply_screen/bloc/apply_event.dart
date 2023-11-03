// ignore_for_file: must_be_immutable

part of 'apply_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Apply widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplyEvent extends Equatable {}

/// Event that is dispatched when the Apply widget is first created.
class ApplyInitialEvent extends ApplyEvent {
  @override
  List<Object?> get props => [];
}
