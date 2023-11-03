// ignore_for_file: must_be_immutable

part of 'homepage_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageThreeEvent extends Equatable {}

/// Event that is dispatched when the HomepageThree widget is first created.
class HomepageThreeInitialEvent extends HomepageThreeEvent {
  @override
  List<Object?> get props => [];
}
