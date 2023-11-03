// ignore_for_file: must_be_immutable

part of 'companies_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Companies widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CompaniesEvent extends Equatable {}

/// Event that is dispatched when the Companies widget is first created.
class CompaniesInitialEvent extends CompaniesEvent {
  @override
  List<Object?> get props => [];
}
