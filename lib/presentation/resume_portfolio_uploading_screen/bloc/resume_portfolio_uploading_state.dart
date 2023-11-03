// ignore_for_file: must_be_immutable

part of 'resume_portfolio_uploading_bloc.dart';

/// Represents the state of ResumePortfolioUploading in the application.
class ResumePortfolioUploadingState extends Equatable {
  ResumePortfolioUploadingState({this.resumePortfolioUploadingModelObj});

  ResumePortfolioUploadingModel? resumePortfolioUploadingModelObj;

  @override
  List<Object?> get props => [
        resumePortfolioUploadingModelObj,
      ];
  ResumePortfolioUploadingState copyWith(
      {ResumePortfolioUploadingModel? resumePortfolioUploadingModelObj}) {
    return ResumePortfolioUploadingState(
      resumePortfolioUploadingModelObj: resumePortfolioUploadingModelObj ??
          this.resumePortfolioUploadingModelObj,
    );
  }
}
