// ignore_for_file: must_be_immutable

part of 'application_tracking_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApplicationTracking widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplicationTrackingEvent extends Equatable {}

/// Event that is dispatched when the ApplicationTracking widget is first created.
class ApplicationTrackingInitialEvent extends ApplicationTrackingEvent {
  @override
  List<Object?> get props => [];
}
