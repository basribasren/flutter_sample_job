// ignore_for_file: must_be_immutable

part of 'solo_company_job_listing_bloc.dart';

/// Represents the state of SoloCompanyJobListing in the application.
class SoloCompanyJobListingState extends Equatable {
  SoloCompanyJobListingState({this.soloCompanyJobListingModelObj});

  SoloCompanyJobListingModel? soloCompanyJobListingModelObj;

  @override
  List<Object?> get props => [
        soloCompanyJobListingModelObj,
      ];
  SoloCompanyJobListingState copyWith(
      {SoloCompanyJobListingModel? soloCompanyJobListingModelObj}) {
    return SoloCompanyJobListingState(
      soloCompanyJobListingModelObj:
          soloCompanyJobListingModelObj ?? this.soloCompanyJobListingModelObj,
    );
  }
}
