import '../../../core/app_export.dart';/// This class is used in the [companyprofile_item_widget] screen.
class CompanyprofileItemModel {CompanyprofileItemModel({this.userImage, this.companyName, this.id, }) { userImage = userImage  ?? ImageConstant.imgImage4;companyName = companyName  ?? "Spotify";id = id  ?? ""; }

String? userImage;

String? companyName;

String? id;

 }
