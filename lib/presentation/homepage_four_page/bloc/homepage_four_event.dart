// ignore_for_file: must_be_immutable

part of 'homepage_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFourEvent extends Equatable {}

/// Event that is dispatched when the HomepageFour widget is first created.
class HomepageFourInitialEvent extends HomepageFourEvent {
  @override
  List<Object?> get props => [];
}
