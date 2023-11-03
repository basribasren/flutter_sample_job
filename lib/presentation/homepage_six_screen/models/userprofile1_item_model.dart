import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userImage, this.userName, this.companyName, this.salary, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage4;userName = userName  ?? "Sr Developer";companyName = companyName  ?? "Spotify";salary = salary  ?? "115,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? companyName;

String? salary;

String? id;

 }
