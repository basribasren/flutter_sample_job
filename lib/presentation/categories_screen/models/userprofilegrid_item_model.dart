import '../../../core/app_export.dart';/// This class is used in the [userprofilegrid_item_widget] screen.
class UserprofilegridItemModel {UserprofilegridItemModel({this.userImage, this.userName, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle1143;userName = userName  ?? "Accountant";id = id  ?? ""; }

String? userImage;

String? userName;

String? id;

 }
