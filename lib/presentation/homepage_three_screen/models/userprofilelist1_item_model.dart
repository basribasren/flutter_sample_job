import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.userImage, this.userName, this.userSalary, this.userCompany, this.userLocation, this.id, }) { userImage = userImage  ?? ImageConstant.imgProfile;userName = userName  ?? "Jr Executive";userSalary = userSalary  ?? "96,000/y";userCompany = userCompany  ?? "Burger King";userLocation = userLocation  ?? "Los Angels, US";id = id  ?? ""; }

String? userImage;

String? userName;

String? userSalary;

String? userCompany;

String? userLocation;

String? id;

 }
