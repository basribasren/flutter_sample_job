// ignore_for_file: must_be_immutable

part of 'profile_style_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileStyleTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileStyleTwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileStyleTwo widget is first created.
class ProfileStyleTwoInitialEvent extends ProfileStyleTwoEvent {
  @override
  List<Object?> get props => [];
}
