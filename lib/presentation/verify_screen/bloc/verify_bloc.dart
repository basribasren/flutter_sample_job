import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/verify_screen/models/verify_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verify_event.dart';part 'verify_state.dart';/// A bloc that manages the state of a Verify according to the event that is dispatched to it.
class VerifyBloc extends Bloc<VerifyEvent, VerifyState> with  CodeAutoFill {VerifyBloc(VerifyState initialState) : super(initialState) { on<VerifyInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerifyState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(VerifyInitialEvent event, Emitter<VerifyState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
