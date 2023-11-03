import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application5/presentation/resume_portfolio_upload_screen/models/resume_portfolio_upload_model.dart';part 'resume_portfolio_upload_event.dart';part 'resume_portfolio_upload_state.dart';/// A bloc that manages the state of a ResumePortfolioUpload according to the event that is dispatched to it.
class ResumePortfolioUploadBloc extends Bloc<ResumePortfolioUploadEvent, ResumePortfolioUploadState> {ResumePortfolioUploadBloc(ResumePortfolioUploadState initialState) : super(initialState) { on<ResumePortfolioUploadInitialEvent>(_onInitialize); }

_onInitialize(ResumePortfolioUploadInitialEvent event, Emitter<ResumePortfolioUploadState> emit, ) async  {  } 
 }
