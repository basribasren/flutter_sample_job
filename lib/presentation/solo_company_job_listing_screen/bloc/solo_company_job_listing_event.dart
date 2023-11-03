// ignore_for_file: must_be_immutable

part of 'solo_company_job_listing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SoloCompanyJobListing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SoloCompanyJobListingEvent extends Equatable {}

/// Event that is dispatched when the SoloCompanyJobListing widget is first created.
class SoloCompanyJobListingInitialEvent extends SoloCompanyJobListingEvent {
  @override
  List<Object?> get props => [];
}
