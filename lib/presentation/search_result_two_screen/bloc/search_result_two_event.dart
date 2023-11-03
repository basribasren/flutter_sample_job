// ignore_for_file: must_be_immutable

part of 'search_result_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultTwoEvent extends Equatable {}

/// Event that is dispatched when the SearchResultTwo widget is first created.
class SearchResultTwoInitialEvent extends SearchResultTwoEvent {
  @override
  List<Object?> get props => [];
}
