// ignore_for_file: must_be_immutable

part of 'applications_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ApplicationsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ApplicationsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ApplicationsTabContainer widget is first created.
class ApplicationsTabContainerInitialEvent
    extends ApplicationsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
