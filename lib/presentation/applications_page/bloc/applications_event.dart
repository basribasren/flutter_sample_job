// ignore_for_file: must_be_immutable

part of 'applications_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Applications widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplicationsEvent extends Equatable {}

/// Event that is dispatched when the Applications widget is first created.
class ApplicationsInitialEvent extends ApplicationsEvent {
  @override
  List<Object?> get props => [];
}
