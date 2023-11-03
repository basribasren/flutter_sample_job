import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/verify_one_screen/models/verify_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verify_one_event.dart';part 'verify_one_state.dart';/// A bloc that manages the state of a VerifyOne according to the event that is dispatched to it.
class VerifyOneBloc extends Bloc<VerifyOneEvent, VerifyOneState> with  CodeAutoFill {VerifyOneBloc(VerifyOneState initialState) : super(initialState) { on<VerifyOneInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerifyOneState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(VerifyOneInitialEvent event, Emitter<VerifyOneState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
