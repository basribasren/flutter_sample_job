// ignore_for_file: must_be_immutable

part of 'resume_portfolio_upload_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResumePortfolioUpload widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResumePortfolioUploadEvent extends Equatable {}

/// Event that is dispatched when the ResumePortfolioUpload widget is first created.
class ResumePortfolioUploadInitialEvent extends ResumePortfolioUploadEvent {
  @override
  List<Object?> get props => [];
}
