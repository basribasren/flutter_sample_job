// ignore_for_file: must_be_immutable

part of 'apply_success_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApplySuccessTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplySuccessTwoEvent extends Equatable {}

/// Event that is dispatched when the ApplySuccessTwo widget is first created.
class ApplySuccessTwoInitialEvent extends ApplySuccessTwoEvent {
  @override
  List<Object?> get props => [];
}
