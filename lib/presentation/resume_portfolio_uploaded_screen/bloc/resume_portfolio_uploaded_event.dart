// ignore_for_file: must_be_immutable

part of 'resume_portfolio_uploaded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResumePortfolioUploaded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResumePortfolioUploadedEvent extends Equatable {}

/// Event that is dispatched when the ResumePortfolioUploaded widget is first created.
class ResumePortfolioUploadedInitialEvent extends ResumePortfolioUploadedEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ResumePortfolioUploadedEvent {
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
