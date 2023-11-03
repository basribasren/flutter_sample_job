// ignore_for_file: must_be_immutable

part of 'seacrh_filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeacrhFilter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeacrhFilterEvent extends Equatable {}

/// Event that is dispatched when the SeacrhFilter widget is first created.
class SeacrhFilterInitialEvent extends SeacrhFilterEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SeacrhFilterEvent {
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
