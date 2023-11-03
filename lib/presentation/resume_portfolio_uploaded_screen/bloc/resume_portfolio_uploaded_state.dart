// ignore_for_file: must_be_immutable

part of 'resume_portfolio_uploaded_bloc.dart';

/// Represents the state of ResumePortfolioUploaded in the application.
class ResumePortfolioUploadedState extends Equatable {
  ResumePortfolioUploadedState({this.resumePortfolioUploadedModelObj});

  ResumePortfolioUploadedModel? resumePortfolioUploadedModelObj;

  @override
  List<Object?> get props => [
        resumePortfolioUploadedModelObj,
      ];
  ResumePortfolioUploadedState copyWith(
      {ResumePortfolioUploadedModel? resumePortfolioUploadedModelObj}) {
    return ResumePortfolioUploadedState(
      resumePortfolioUploadedModelObj: resumePortfolioUploadedModelObj ??
          this.resumePortfolioUploadedModelObj,
    );
  }
}
