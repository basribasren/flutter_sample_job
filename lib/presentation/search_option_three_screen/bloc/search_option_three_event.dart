// ignore_for_file: must_be_immutable

part of 'search_option_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchOptionThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchOptionThreeEvent extends Equatable {}

/// Event that is dispatched when the SearchOptionThree widget is first created.
class SearchOptionThreeInitialEvent extends SearchOptionThreeEvent {
  @override
  List<Object?> get props => [];
}
