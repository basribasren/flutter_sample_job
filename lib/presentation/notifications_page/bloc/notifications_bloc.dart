import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/usernotification_item_model.dart';import 'package:basri_s_application5/presentation/notifications_page/models/notifications_model.dart';part 'notifications_event.dart';part 'notifications_state.dart';/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {NotificationsBloc(NotificationsState initialState) : super(initialState) { on<NotificationsInitialEvent>(_onInitialize); }

_onInitialize(NotificationsInitialEvent event, Emitter<NotificationsState> emit, ) async  { emit(state.copyWith(notificationsModelObj: state.notificationsModelObj?.copyWith(usernotificationItemList: fillUsernotificationItemList()))); } 
List<UsernotificationItemModel> fillUsernotificationItemList() { return [UsernotificationItemModel(userImage: ImageConstant.imgImage79, notificationTime: "1 hrs ago"), UsernotificationItemModel(notificationTime: "3 hrs ago")]; } 
 }
