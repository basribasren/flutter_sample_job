// ignore_for_file: must_be_immutable

part of 'profile_drop_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileDrop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileDropEvent extends Equatable {}

/// Event that is dispatched when the ProfileDrop widget is first created.
class ProfileDropInitialEvent extends ProfileDropEvent {
  @override
  List<Object?> get props => [];
}
