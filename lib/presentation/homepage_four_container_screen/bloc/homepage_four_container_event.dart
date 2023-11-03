// ignore_for_file: must_be_immutable

part of 'homepage_four_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFourContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFourContainerEvent extends Equatable {}

/// Event that is dispatched when the HomepageFourContainer widget is first created.
class HomepageFourContainerInitialEvent extends HomepageFourContainerEvent {
  @override
  List<Object?> get props => [];
}
