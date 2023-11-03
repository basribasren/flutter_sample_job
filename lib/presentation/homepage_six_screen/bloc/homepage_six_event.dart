// ignore_for_file: must_be_immutable

part of 'homepage_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageSixEvent extends Equatable {}

/// Event that is dispatched when the HomepageSix widget is first created.
class HomepageSixInitialEvent extends HomepageSixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends HomepageSixEvent {
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
