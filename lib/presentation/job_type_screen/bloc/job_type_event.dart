// ignore_for_file: must_be_immutable

part of 'job_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobTypeEvent extends Equatable {}

/// Event that is dispatched when the JobType widget is first created.
class JobTypeInitialEvent extends JobTypeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends JobTypeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends JobTypeEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends JobTypeEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends JobTypeEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
