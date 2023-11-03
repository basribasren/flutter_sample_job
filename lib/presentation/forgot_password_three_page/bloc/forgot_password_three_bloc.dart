import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application5/presentation/forgot_password_three_page/models/forgot_password_three_model.dart';
part 'forgot_password_three_event.dart';
part 'forgot_password_three_state.dart';

/// A bloc that manages the state of a ForgotPasswordThree according to the event that is dispatched to it.
class ForgotPasswordThreeBloc
    extends Bloc<ForgotPasswordThreeEvent, ForgotPasswordThreeState> {
  ForgotPasswordThreeBloc(ForgotPasswordThreeState initialState)
      : super(initialState) {
    on<ForgotPasswordThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ForgotPasswordThreeInitialEvent event,
    Emitter<ForgotPasswordThreeState> emit,
  ) async {
    emit(state.copyWith(
      phoneNumberController: TextEditingController(),
    ));
  }
}
