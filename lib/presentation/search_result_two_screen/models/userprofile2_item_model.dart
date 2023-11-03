import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userImage, this.userName, this.userOS, this.userSalary, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage44;userName = userName  ?? "UX Designer";userOS = userOS  ?? "Ubuntu";userSalary = userSalary  ?? "80,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? userOS;

String? userSalary;

String? id;

 }
