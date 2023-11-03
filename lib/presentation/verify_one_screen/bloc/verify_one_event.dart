// ignore_for_file: must_be_immutable

part of 'verify_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerifyOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyOneEvent extends Equatable {}

/// Event that is dispatched when the VerifyOne widget is first created.
class VerifyOneInitialEvent extends VerifyOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerifyOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
