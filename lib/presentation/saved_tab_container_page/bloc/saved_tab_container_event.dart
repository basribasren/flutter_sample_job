// ignore_for_file: must_be_immutable

part of 'saved_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SavedTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SavedTabContainerEvent extends Equatable {}

/// Event that is dispatched when the SavedTabContainer widget is first created.
class SavedTabContainerInitialEvent extends SavedTabContainerEvent {
  @override
  List<Object?> get props => [];
}
