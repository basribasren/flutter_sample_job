// ignore_for_file: must_be_immutable

part of 'job_preferences_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobPreferencesTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobPreferencesTwoEvent extends Equatable {}

/// Event that is dispatched when the JobPreferencesTwo widget is first created.
class JobPreferencesTwoInitialEvent extends JobPreferencesTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends JobPreferencesTwoEvent {
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

///Event for changing ChipView selection
class UpdateChipView1Event extends JobPreferencesTwoEvent {
  UpdateChipView1Event({
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

///Event for changing ChipView selection
class UpdateChipView2Event extends JobPreferencesTwoEvent {
  UpdateChipView2Event({
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

///Event for changing ChipView selection
class UpdateChipView3Event extends JobPreferencesTwoEvent {
  UpdateChipView3Event({
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
