// ignore_for_file: must_be_immutable

part of 'job_details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobDetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobDetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the JobDetailsTwo widget is first created.
class JobDetailsTwoInitialEvent extends JobDetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
