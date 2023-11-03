// ignore_for_file: must_be_immutable

part of 'job_type_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobTypeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobTypeOneEvent extends Equatable {}

/// Event that is dispatched when the JobTypeOne widget is first created.
class JobTypeOneInitialEvent extends JobTypeOneEvent {
  @override
  List<Object?> get props => [];
}

class JobtypeoneItemEvent extends JobTypeOneEvent {
  JobtypeoneItemEvent({
    required this.index,
    this.radioGroup,
  });

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [
        index,
        radioGroup,
      ];
}
