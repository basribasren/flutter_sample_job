// ignore_for_file: must_be_immutable

part of 'job_proposal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobProposal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobProposalEvent extends Equatable {}

/// Event that is dispatched when the JobProposal widget is first created.
class JobProposalInitialEvent extends JobProposalEvent {
  @override
  List<Object?> get props => [];
}
