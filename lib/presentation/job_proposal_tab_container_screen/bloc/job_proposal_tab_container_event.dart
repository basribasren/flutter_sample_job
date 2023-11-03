// ignore_for_file: must_be_immutable

part of 'job_proposal_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///JobProposalTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class JobProposalTabContainerEvent extends Equatable {}

/// Event that is dispatched when the JobProposalTabContainer widget is first created.
class JobProposalTabContainerInitialEvent extends JobProposalTabContainerEvent {
  @override
  List<Object?> get props => [];
}
