import '../../../core/app_export.dart';/// This class is used in the [userprofilelist3_item_widget] screen.
class Userprofilelist3ItemModel {Userprofilelist3ItemModel({this.userImage, this.userName, this.userCompany, this.userSalary, this.id, }) { userImage = userImage  ?? ImageConstant.imgFacebook;userName = userName  ?? "Sr Engineer";userCompany = userCompany  ?? "Facebook";userSalary = userSalary  ?? "96,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? userCompany;

String? userSalary;

String? id;

 }
