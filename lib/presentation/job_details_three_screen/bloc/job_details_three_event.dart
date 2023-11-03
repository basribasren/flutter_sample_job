// ignore_for_file: must_be_immutable

part of 'job_details_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobDetailsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobDetailsThreeEvent extends Equatable {}

/// Event that is dispatched when the JobDetailsThree widget is first created.
class JobDetailsThreeInitialEvent extends JobDetailsThreeEvent {
  @override
  List<Object?> get props => [];
}
