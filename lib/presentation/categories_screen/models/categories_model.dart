// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'categorygrid_item_model.dart';import 'userprofilegrid_item_model.dart';/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel extends Equatable {CategoriesModel({this.categorygridItemList = const [], this.userprofilegridItemList = const [], }) {  }

List<CategorygridItemModel> categorygridItemList;

List<UserprofilegridItemModel> userprofilegridItemList;

CategoriesModel copyWith({List<CategorygridItemModel>? categorygridItemList, List<UserprofilegridItemModel>? userprofilegridItemList, }) { return CategoriesModel(
categorygridItemList : categorygridItemList ?? this.categorygridItemList,
userprofilegridItemList : userprofilegridItemList ?? this.userprofilegridItemList,
); } 
@override List<Object?> get props => [categorygridItemList,userprofilegridItemList];
 }
