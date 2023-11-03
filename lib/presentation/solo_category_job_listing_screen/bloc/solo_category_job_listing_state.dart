// ignore_for_file: must_be_immutable

part of 'solo_category_job_listing_bloc.dart';

/// Represents the state of SoloCategoryJobListing in the application.
class SoloCategoryJobListingState extends Equatable {
  SoloCategoryJobListingState({this.soloCategoryJobListingModelObj});

  SoloCategoryJobListingModel? soloCategoryJobListingModelObj;

  @override
  List<Object?> get props => [
        soloCategoryJobListingModelObj,
      ];
  SoloCategoryJobListingState copyWith(
      {SoloCategoryJobListingModel? soloCategoryJobListingModelObj}) {
    return SoloCategoryJobListingState(
      soloCategoryJobListingModelObj:
          soloCategoryJobListingModelObj ?? this.soloCategoryJobListingModelObj,
    );
  }
}
