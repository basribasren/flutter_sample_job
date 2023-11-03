import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.userImage, this.userName, this.companyName, this.salary, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage99;userName = userName  ?? "UX Designer";companyName = companyName  ?? "Fiverr";salary = salary  ?? "115,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? companyName;

String? salary;

String? id;

 }
