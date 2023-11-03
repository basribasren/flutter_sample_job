// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'usernotification_item_model.dart';/// This class defines the variables used in the [notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsModel extends Equatable {NotificationsModel({this.usernotificationItemList = const []}) {  }

List<UsernotificationItemModel> usernotificationItemList;

NotificationsModel copyWith({List<UsernotificationItemModel>? usernotificationItemList}) { return NotificationsModel(
usernotificationItemList : usernotificationItemList ?? this.usernotificationItemList,
); } 
@override List<Object?> get props => [usernotificationItemList];
 }
