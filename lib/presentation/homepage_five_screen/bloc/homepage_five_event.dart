// ignore_for_file: must_be_immutable

part of 'homepage_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageFiveEvent extends Equatable {}

/// Event that is dispatched when the HomepageFive widget is first created.
class HomepageFiveInitialEvent extends HomepageFiveEvent {
  @override
  List<Object?> get props => [];
}
