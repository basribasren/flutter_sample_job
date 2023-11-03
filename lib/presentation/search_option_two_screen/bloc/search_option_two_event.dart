// ignore_for_file: must_be_immutable

part of 'search_option_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchOptionTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchOptionTwoEvent extends Equatable {}

/// Event that is dispatched when the SearchOptionTwo widget is first created.
class SearchOptionTwoInitialEvent extends SearchOptionTwoEvent {
  @override
  List<Object?> get props => [];
}
