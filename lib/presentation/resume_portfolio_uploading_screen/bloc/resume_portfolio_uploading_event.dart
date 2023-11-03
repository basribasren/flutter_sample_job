// ignore_for_file: must_be_immutable

part of 'resume_portfolio_uploading_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResumePortfolioUploading widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResumePortfolioUploadingEvent extends Equatable {}

/// Event that is dispatched when the ResumePortfolioUploading widget is first created.
class ResumePortfolioUploadingInitialEvent
    extends ResumePortfolioUploadingEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ResumePortfolioUploadingEvent {
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
