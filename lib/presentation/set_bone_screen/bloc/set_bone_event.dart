// ignore_for_file: must_be_immutable

part of 'set_bone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetBone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetBoneEvent extends Equatable {}

/// Event that is dispatched when the SetBone widget is first created.
class SetBoneInitialEvent extends SetBoneEvent {
  @override
  List<Object?> get props => [];
}
