import '../../../core/app_export.dart';/// This class is used in the [usernotification_item_widget] screen.
class UsernotificationItemModel {UsernotificationItemModel({this.userImage, this.notificationTime, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage79;notificationTime = notificationTime  ?? "1 hrs ago";id = id  ?? ""; }

String? userImage;

String? notificationTime;

String? id;

 }
