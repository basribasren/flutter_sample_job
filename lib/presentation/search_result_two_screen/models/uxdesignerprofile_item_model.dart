import '../../../core/app_export.dart';/// This class is used in the [uxdesignerprofile_item_widget] screen.
class UxdesignerprofileItemModel {UxdesignerprofileItemModel({this.userImage, this.userName, this.dribbble, this.salary, this.id, }) { userImage = userImage  ?? ImageConstant.imgLogosDribbbleIcon;userName = userName  ?? "UX Designer";dribbble = dribbble  ?? "Dribbble";salary = salary  ?? "80,000/y";id = id  ?? ""; }

String? userImage;

String? userName;

String? dribbble;

String? salary;

String? id;

 }
