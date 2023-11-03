import '../../../core/app_export.dart';/// This class is used in the [userprofilelist4_item_widget] screen.
class Userprofilelist4ItemModel {Userprofilelist4ItemModel({this.userImage, this.userName, this.companyName, this.salary, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage5;userName = userName  ?? "Jr Executive";companyName = companyName  ?? "Pinterest";salary = salary  ?? "96,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? companyName;

String? salary;

String? id;

 }
