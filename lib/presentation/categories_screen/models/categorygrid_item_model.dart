import '../../../core/app_export.dart';/// This class is used in the [categorygrid_item_widget] screen.
class CategorygridItemModel {CategorygridItemModel({this.userImage, this.userDesignation, this.id, }) { userImage = userImage  ?? ImageConstant.imgRectangle114;userDesignation = userDesignation  ?? "UX Designer";id = id  ?? ""; }

String? userImage;

String? userDesignation;

String? id;

 }
