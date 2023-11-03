// ignore_for_file: must_be_immutable

part of 'solo_category_job_listing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SoloCategoryJobListing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SoloCategoryJobListingEvent extends Equatable {}

/// Event that is dispatched when the SoloCategoryJobListing widget is first created.
class SoloCategoryJobListingInitialEvent extends SoloCategoryJobListingEvent {
  @override
  List<Object?> get props => [];
}
