// ignore_for_file: must_be_immutable

part of 'search_option_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchOptionOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchOptionOneEvent extends Equatable {}

/// Event that is dispatched when the SearchOptionOne widget is first created.
class SearchOptionOneInitialEvent extends SearchOptionOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchOptionOneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
