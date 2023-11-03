// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'uxdesignerprofile_item_model.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [search_result_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultTwoModel extends Equatable {SearchResultTwoModel({this.uxdesignerprofileItemList = const [], this.userprofile2ItemList = const [], }) {  }

List<UxdesignerprofileItemModel> uxdesignerprofileItemList;

List<Userprofile2ItemModel> userprofile2ItemList;

SearchResultTwoModel copyWith({List<UxdesignerprofileItemModel>? uxdesignerprofileItemList, List<Userprofile2ItemModel>? userprofile2ItemList, }) { return SearchResultTwoModel(
uxdesignerprofileItemList : uxdesignerprofileItemList ?? this.uxdesignerprofileItemList,
userprofile2ItemList : userprofile2ItemList ?? this.userprofile2ItemList,
); } 
@override List<Object?> get props => [uxdesignerprofileItemList,userprofile2ItemList];
 }
