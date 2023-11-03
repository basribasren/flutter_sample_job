import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage, this.userName, this.userPlatform, this.userSalary, this.id, }) { userImage = userImage  ?? ImageConstant.imgLogosDribbbleIcon;userName = userName  ?? "UX Designer";userPlatform = userPlatform  ?? "Dribbble";userSalary = userSalary  ?? "80,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? userPlatform;

String? userSalary;

String? id;

 }
