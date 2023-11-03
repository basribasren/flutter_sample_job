// ignore_for_file: must_be_immutable

part of 'profile_style_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileStyleOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileStyleOneEvent extends Equatable {}

/// Event that is dispatched when the ProfileStyleOne widget is first created.
class ProfileStyleOneInitialEvent extends ProfileStyleOneEvent {
  @override
  List<Object?> get props => [];
}
