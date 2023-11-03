// ignore_for_file: must_be_immutable

part of 'resume_portfolio_upload_bloc.dart';

/// Represents the state of ResumePortfolioUpload in the application.
class ResumePortfolioUploadState extends Equatable {
  ResumePortfolioUploadState({this.resumePortfolioUploadModelObj});

  ResumePortfolioUploadModel? resumePortfolioUploadModelObj;

  @override
  List<Object?> get props => [
        resumePortfolioUploadModelObj,
      ];
  ResumePortfolioUploadState copyWith(
      {ResumePortfolioUploadModel? resumePortfolioUploadModelObj}) {
    return ResumePortfolioUploadState(
      resumePortfolioUploadModelObj:
          resumePortfolioUploadModelObj ?? this.resumePortfolioUploadModelObj,
    );
  }
}
